# Mybatis的使用

## Mybatis 项目

1. 构造`SqlSessionFactoryBuilder`

2. 通过`SqlSessionFactoryBuilder`构造出`SqlSessionFactory`， `SqlSessionFactory`的配置可以放在`XML` （利用`Resources.getResourceAsStream()`读取XML文件中的配置），也可以自定义配置使用`Configuration`。常用的`SqlSessionFactory`的配置:

   ```java
   <?xml version="1.0" encoding="UTF-8"?>
   <!DOCTYPE configuration PUBLIC Config 3.0//EN" "http://mybatis.org/dtd/mybatis-3-config.dtd">
    
   <configuration>
     <environments> 
     	<environment id="dev"> 
     		<transactionManager type="JDBC"> 
     			<datasource type="POOLED">
     				<property name="driver" value="com.mysql.cj.jdb.Driver"/>
     				<property name="url" value="jdbc:mysql://localhost:3306/zp"/>
     				<property name="username" value="root"/>
     				<property name="password" value="123456"/>
     			</datasource>
         </transactionManager>
       </environment>
     </environments>
     
   </configuration>
   ```

3. 从`SqlSessionFactory`中获取`SqlSession`，`SqlSession`提供了在数据库执行SQL的所有方法，你可以通过`SqlSession`实例来间接执行`Mapper`中的SQL语句。

   ```java
   try (SqlSession session = sqlSessionFactory.openSession()) {
     BlogMapper mapper = session.getMapper(BlogMapper.class);
     Blog blog = mapper.selectBlog(101);
   }
   ```

   

4. 至于Mapper，可以通过XML的方法来定义Sql 以及对应的接口，然后从`SqlSession`中获取Mapper实例

5. 然后还需要注册Mapper为Bean

## Mybatis-Spring 项目

1. 利用注解和`@Configuration`可以直接配置 Mybatis

   ```java
   @PropertySource(value={"classpath:config/db.properties"})
   @Configuration
   public class MyBatisConfig {
     	@Value("${jdbc.driver}")
     	private String driver;
     	@Value("${jdbc.url}")
     	private String url;
     	@Value("${jdbc.username}")
     	private String username;
     	@Value("${jdbc.password}")
     	private String password;
     
     	@Bean
     	public DriverManagerDataSource dataSource() {
         	DriverManagerDataSource dataSource = new DriverManagerDataSource();
         	dataSource.setDriverClassName(driver);
         	dataSource.setUrl(url);
         	dataSource.setUserName(username);
         	dataSource.setPassword(password);
         	return dataSource;
       }
     
     	// new SqlSessionFactoryBean -> factoryBean.getObject() -> afterPropertiesSet() -> buildSqlSessionFactory() -> SqlSessionFactory 
     	@Bean
     	public SqlSessionFactory sqlSessionFactory() throws Exception {
         	SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
         	factoryBean.setDataSource(dataSource());
         	return factoryBean.getObject();
       }
     
     	
   }
   ```

   

2. 自定义 Mapper，SQL可以使用注解或者Mapper.xml的方式，推荐使用XML

   ```java
   public interface UserMapper {
     	@Select("select * from user_info where id = #{id}")
     	User getUserById(@Param("id") int id);
   }
   ```

   ​    以及对应的实体类

   ```java
   public class User {
       
       private int id;
       private String name;
       private String phone;
       private int age;
       
       @Override
       public String toString() {
           return "id=" + id + ", name=" + name + ", phone=" + phone + ", age=" + age;
       }
   }
   ```

3. 注册 Mapper, 通过MapperFactoryBean 能将其注册到 Spring 中

   ```java
   // 接上面的MybatisConfig.java
   
   		@Bean
   		public MapperFactoryBean<UserMapper> userMapper() throws Exception {
         	MapperFactoryBean<UserMapper> factoryBean = new MapperFactoryBean<>(UserMapper.class);
         	factoryBean.setSqlSessionFactory(sqlSessionFactory());
         	return factoryBean;
       }
   ```

   

4. 最后不论是用mybatis.xml 的方式注册 Mapper 还是间接通过注入Bean的形式，都十分麻烦，因此可以使用@MapperScan注解来扫描映射器。（和@Configuration搭配)

https://lequ7.com/guan-yu-javamybatis-ru-he-jie-xi-mapper-he-spring-zhong-mapperscan-yuan-li.html