# MySQL 复习笔记

## 一、MySQL索引知识和优化索引

1. 索引的类型： 

   - BTree索引，Innodb使用的是B+树，BTree意味着所有的值都是按顺序存储，且每一个叶子节点到根的距离相同，B+树非叶子节点存放的是主键索引和指向子节点的指针，叶子结点存放的是行数据，并且按照主键顺序排列，且有一个指针指向下一个叶子节点。

     BTree索引对于全值匹配、匹配最左前缀、匹配列前缀、匹配范围值、精确匹配某一列并范围匹配另外一列以及只访问索引的查询。索引还可以用于查询中的ORDER BY操作，以上几种查询类型对应的排序需求

     限制：

     - 如果不是按照索引的最左列开始查找，则无法使用索引
     - 不能跳过索引中的列
     - 如果索引中某一列是范围查找，则之后的列都不能使用索引优化查找

     补充：最左匹配原则，即联合索引的最左前缀，必须从第左列开始，不能跳过列，但是有一个问题

     如果索引 为(idx1,idx2,idx3)，`select * from user where idx1=1 and idx3=3`不符合最左匹配原则，但是它可以使用`idx1`的索引。

     **trick** 假设有索引`(last_name, first_name, dob)`，查询`where last_name = 'smith' and first_name LIKE 'J' and dob = '1976-12-23'`，则这个查询只能使用索引的前两列。因此如果范围查询的列值有限，完全可以使用多个等于条件来代替范围查询

   - 哈希索引，基于哈希表实现，只有精确匹配索引所有的列的查询才有效，哈希索引对每一行数据，会对所有的索引列计算一个哈希码，将所有的哈希码存储在索引中，同时在哈希表中保存指向每个数据行的指针。

     哈希索引的优点：速度非常快，而且索引的结构十分紧凑

     缺点：1）不能做覆盖索引查询；2）无法排序；3）不支持部分索引列的查找；4）只支持等值查询；5）如果出现很多哈希冲突，则会影响查询速度，且索引维护的操作代价会很高

     Innodb引擎有一个“自适应哈希索引”，InnoDB引擎注意到某些索引值被引用的非常频繁，它会在内存中基于 B-Tree索引之上再创建一个哈希索引，完全自动、内部的行为，用户无法控制

     可以创建自定义哈希索引，比如新增一列存储需要的哈希值，在查询的where字句中指定使用的哈希函数，因此需要维护哈希索引，可以利用触发器:

     ```sql
     create table pseudohash (
     	id int unsigned not null auto_increment,
       url varchar(255) not null,
       url_crc int unsigned not null default 0,
       primary key(id)
     );
     
     // 创建触发器
     delimiter //
     create trigger pseudohash_crc_ins before insert on pseudohash for each row begin
     set NEW.url_crc=crc32(NEW.url);
     end;
     //
     
     create trigger pseudohash_crc_upd before update on pseudohash for each row begin
     set NET.url_crc = crc32(NEW.url);
     end;
     //
     delimiter ;
     ```

     

   - 空间数据索引，MyISAM表支持空间索引，可以用作地理数据存储。

   - 全文索引，是一种特殊类型的索引，它查找的是文本中的关键词，而不是直接比较索引中的值。

2. 索引的优点

   - 索引大大减少了服务器需要扫描的数据量
   - 索引可以帮助服务器避免排序和临时表
   - 索引可以将随机I/O 变成顺序I/O

3. 如何创建高性能的索引策略

   - 查询中如果想要利用索引必须使用独立的列（即索引列不能是函数的参数或者表达式的一部分）——习惯简化where条件，将索引列单独放在比较符号的左侧

   - 前缀索引和选择性，如何确定合适的前缀？要选择足够长的前缀以保证较高的选择性，又不能太长以节约空间

     ```sql
     select count(distinct city) / count(*) from city;
     select count(distinct left(city, 3)) / count(*) as left3,
            count(distinct left(city, 4)) / count(*) as left4,
            count(distinct left(city, 5)) / count(*) as left5,
            count(distinct left(city, 6)) / count(*) as left6,
            count(distinct left(city, 7)) / count(*) as left7
     from city;
     选择选择性足够接近该列的选择性且较短的前缀
     alter table city add key(city(7));
     ```

     有时候会使用到后缀索引，那么可以将字符串反转存储，然后建立前缀索引

   - 多列索引

     索引合并，索引联合扫描，对于查询中存在多个索引时，在高版本的MySQL

     - 如果对多个索引做AND操作，可以建立一个包含全部相关列的多列索引
     - 如果需要对多个索引做OR操作时，通常需要全表扫描，不如改成 UNION的方式更好

   - 选择合适的索引列顺序

     - 最左前缀匹配，正确的顺序可以既利用索引做查询，还可以做排序或者分组
     - 如何选择合适的索引列顺序呢，一般来说，平均情况下将选择性最高的列放在索引最前列，如果需要特殊考虑，可以考虑最常用的查询的列值的分布和选择性来排列

   - 聚簇索引，InnoDB就是以聚簇索引的方式存储数据，通过主键聚集数据，数据行存放在索引的叶子页上，即数据行和相邻的剑指紧凑地存储在一起。

     InnoDB如果没有指定主键，会选择一个唯一的非空索引代理，如果没有这样的索引则会隐式定义一个主键来作为聚簇索引

     聚簇索引的优点：

     - 可以把相关的数据存放在一起
     - 数据访问更快，因为把索引和数据保存在同一个B-Tree中
     - 使用覆盖索引扫描的查询可以直接使用非叶子节点的主键值

     聚簇索引的缺点：

     - 插入速度严重依赖于插入顺序，如果按照主键的顺序插入则是最快的，否则会造成大量的页分裂以及页稀疏
     - 更新聚簇索引列的代价非常高
     - 基于聚簇索引的表在插入新行或者主键被更新导致需要移动行的时候，可能面临“页分裂”的问题。
     - 二级索引访问需要两次索引查找，而不是一次

   - 覆盖索引

   - 使用索引扫描来做排序

   - 压缩索引

   - 冗余和重复索引

4. InnoDB和MyISAM的数据分布



## 二、优化查询

### 分页小技巧

1. 最沉重的做法: 使用LIMIT OFFSET

   ```sql
   1. select * from user limit 50;
   2. select * from user limit 50, 50;
   3. select * from user limit 100, 50;
   ```

   LIMIT OFFSET 最大的问题在于MySQL每次都是取出LIMIT + OFFSET条数，然后抛弃前OFFSET条，如果数据量和偏移量越来越大，这个方法非常不可行

2. 优化一：尽可能使用索引覆盖扫描，然后根据需要再做一次关联操作再返回所需的列，对于偏移量很大的情形，优化效果很明显

   ```sql
   如这样的查询：
   select id, name from user order by age limit 5000, 5;
   如果数据表很大，可以使用优化思路一改写
   select id, name from user inner join (select id from user order age limit 5000, 5) as user2 using(id)
   ```

   “延迟关联”

3. 优化二：LIMIT 和 OFFSET的问题其实是OFFSET的问题，它会导致MySQL扫描大量不需要的行再抛弃掉。如果可以用书签记录上次扫描的位置，下次就可以直接从该书签记录的位置开始扫描，这样就可以避免使用OFFSET

   ```sql
   可以按照如下思路来分页：
   1. select * from user order by id limit 50; // 假设查询出的id范围为(1001, 1050)
   2. select * from user where id >= 1051 order by id limit 50;
   3. ...
   ```

4. 优化三：更好的设计时将分页栏具体的页数换成“下一页”按钮，假设每一页显示20条记录，我们每次查询都是用LIMIT返回21条记录并只显示20条，如果第21条存在，那么我们就显示“下一页”按钮，否则就无需显示。

   另一种思路是：先获取并缓存足够多的数据，例如缓存1000条，然后每次分页都从这个缓存中获取。这样可以让应用程序根据结果集的大小采取不同的策略，如果结果集少于1000，那么就在页面上显示所有的分页链接，因为数据都在缓存中。如果结果集大于1000，那么可以在页面上设计一个额外的“找到的结果多余1000条”。

   如果需要计算结果集总数，如果不需要非常精确，可以考虑使用 EXPLAIN的结果中的rows列的值作为结果集总数的近似值，如果还需要精确值，再使用COUNT(*)