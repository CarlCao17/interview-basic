# HashMap源码 分析

更详细的HashMap源码分析可参看https://segmentfault.com/a/1190000012926722

## HashMap 简介

HashMap主要存放键值对，它基于哈希表的Map接口实现，是Java 集合类库中常用的集合之一。

JDK 1.8之前HashMap由数组 + 链表组成，数组是HashMap主体，链表主要是为了解决hash冲突（拉链法）；而JDK 1.8 增加了红黑树实现，当桶内链表长度超过阈值（默认是8）（且需要判断数组的容量大于64，否则只会给数组扩容）将链表转为红黑树，以提高搜索的效率

### 底层数据结构分析

JDK1.8之前HashMap底层是 **数组和链表** 结合在一起的链表散列，主要是利用扰动函数(hash方法)将key的原始hashcode加以扰动得到hash值，然后利用`(n-1) & hash `判断当前元素存放在数组的那个桶中(n指数组的长度或容量)，如果当前桶为空，则直接新增一个元素放进去；若不空，判断桶中第一个元素和当前键的hash值是否相同，key是否相等或相同，如果相同则直接覆盖。若key不相同，则利用拉链法解决冲突。

所谓扰动函数是指hash方法，它主要是为了解决两个问题：1. 为了减轻某些设计得很差的hashcode方法造成的碰撞；2. 由于利用`(n-1) & hash`，只利用了hash值的低k位，假设 $n = 2^k$，尤其是一般`n`不是很大的时候，高位的信息并没有利用进去，而且很容易造成碰撞。因此它做了这样一步操作：将hash值的高16位和低16位做异或，增强低16位的随机性，使得分布更均匀一些，减少碰撞。

```java
 static final int hash(Object key) {
        int h;
        return (key == null) ? 0 : (h = key.hashCode()) ^ (h >>> 16);
    }
```

**类的属性（域变量）**

```java
public class HashMap<K,V> extends AbstractMap<K,V> implements Map<K,V>, Cloneable, Serializable {
    // 序列号
    private static final long serialVersionUID = 362498820763181265L;
    // 默认的初始容量是16
    // 和ArrayList有点不同，HashMap并没有INITIAL_CAPACITY这个域变量，因为已经用threshold存着初始容量的信息，而且初始容量只会使用一次，所以可以省略一个域变量
    static final int DEFAULT_INITIAL_CAPACITY = 1 << 4;
    // 最大容量
    static final int MAXIMUM_CAPACITY = 1 << 30;
    // 默认的填充因子
    static final float DEFAULT_LOAD_FACTOR = 0.75f;
    // 当桶(bucket)上的结点数大于这个值时会转成红黑树
    static final int TREEIFY_THRESHOLD = 8;
    // 当桶(bucket)上的结点数小于这个值时树转链表
    static final int UNTREEIFY_THRESHOLD = 6;
    // 桶中结构转化为红黑树对应的table的最小大小
    static final int MIN_TREEIFY_CAPACITY = 64;
    // 存储元素的数组，总是2的幂次倍
    transient Node<k,v>[] table;
    // 存放具体元素的集
    transient Set<map.entry<k,v>> entrySet;
    // 存放元素的个数，注意这个不等于数组的长度。
    transient int size;
    // 每次扩容和更改map结构的计数器
    transient int modCount;
    // 临界值 当实际大小(容量*填充因子)超过临界值时，会进行扩容
    int threshold;
    // 加载因子
    final float loadFactor;
}
```

- loadFactor 装载因子

  表示table存放数据的密度，loadFactore越接近1，数组中存放的数据(Entry)越多，越接近0，则越少。

  loadFactor越大，则查找效率越低，越小则空间利用率越低。默认的容量为16，默认的装载因子为0.75，因此如果使用默认容量和默认的装载因子初始化，则当table中存放的数据超过12个时就需要扩容（调用resize方法)，而扩容操作涉及到rehash，复制元素等操作，非常耗时。

- threshold 阈值

​        阈值表示当数组中存放的数据个数超过这个阈值就需要扩容，初始化时阈值存放了初始容量的信息

**Node节点源码**

```java
    /**
     * Basic hash bin node, used for most entries.  (See below for
     * TreeNode subclass, and in LinkedHashMap for its Entry subclass.)
     */
    static class Node<K,V> implements Map.Entry<K,V> {
        final int hash; // 存放key的hash值
        final K key;
        V value;
        Node<K,V> next; // 后继节点

        Node(int hash, K key, V value, Node<K,V> next) {
            this.hash = hash;
            this.key = key;
            this.value = value;
            this.next = next;
        }

        public final K getKey()        { return key; }
        public final V getValue()      { return value; }
        public final String toString() { return key + "=" + value; }

        public final int hashCode() {
            return Objects.hashCode(key) ^ Objects.hashCode(value);
        }

        public final V setValue(V newValue) {
            V oldValue = value;
            value = newValue;
            return oldValue;
        }
				
        // 重写了equals方法
        public final boolean equals(Object o) {
            if (o == this)
                return true;
            if (o instanceof Map.Entry) {
                Map.Entry<?,?> e = (Map.Entry<?,?>)o;
                if (Objects.equals(key, e.getKey()) &&
                    Objects.equals(value, e.getValue()))
                    return true;
            }
            return false;
        }
    }
```

**树节点源码**

```java
// Tree bins

    /**
     * Entry for Tree bins. Extends LinkedHashMap.Entry (which in turn
     * extends Node) so can be used as extension of either regular or
     * linked node.
     */
    static final class TreeNode<K,V> extends LinkedHashMap.Entry<K,V> {
        TreeNode<K,V> parent;  // red-black tree links
        TreeNode<K,V> left;
        TreeNode<K,V> right;
        TreeNode<K,V> prev;    // needed to unlink next upon deletion
        boolean red;
        TreeNode(int hash, K key, V val, Node<K,V> next) {
            super(hash, key, val, next);
        }

        /**
         * Returns root of tree containing this node.
         */
        final TreeNode<K,V> root() {
            for (TreeNode<K,V> r = this, p;;) {
                if ((p = r.parent) == null)
                    return r;
                r = p;
            }
        }
```



## HashMap源码分析

### HashMap构造函数

总共有4个构造函数，`public HashMap(int initialCapacity, float loadFactor)`指定初始容量和装载因子，它将初始容量利用`tableSizeFor`方法存放在`threshold`中（`tableSizeFor`计算对应于`initialCapacity`最合适的数组大小——即大于等于`initialCapacity`的2的幂)。

`public HashMap(int initialCapacity)`使用默认装载因子，`public HashMap()`使用默认装载因子和默认初始容量，最后一个构造函数利用一个Map构造新的HashMap。

```java
/**
     * Constructs an empty <tt>HashMap</tt> with the specified initial
     * capacity and load factor.
     *
     * @param  initialCapacity the initial capacity
     * @param  loadFactor      the load factor
     * @throws IllegalArgumentException if the initial capacity is negative
     *         or the load factor is nonpositive
     */
    public HashMap(int initialCapacity, float loadFactor) {
        if (initialCapacity < 0)
            throw new IllegalArgumentException("Illegal initial capacity: " +
                                               initialCapacity);
        if (initialCapacity > MAXIMUM_CAPACITY)
            initialCapacity = MAXIMUM_CAPACITY;
        if (loadFactor <= 0 || Float.isNaN(loadFactor))
            throw new IllegalArgumentException("Illegal load factor: " +
                                               loadFactor);
        this.loadFactor = loadFactor;
        this.threshold = tableSizeFor(initialCapacity);
    }

    /**
     * Constructs an empty <tt>HashMap</tt> with the specified initial
     * capacity and the default load factor (0.75).
     *
     * @param  initialCapacity the initial capacity.
     * @throws IllegalArgumentException if the initial capacity is negative.
     */
    public HashMap(int initialCapacity) {
        this(initialCapacity, DEFAULT_LOAD_FACTOR);
    }

    /**
     * Constructs an empty <tt>HashMap</tt> with the default initial capacity
     * (16) and the default load factor (0.75).
     */
    public HashMap() {
        this.loadFactor = DEFAULT_LOAD_FACTOR; // all other fields defaulted
    }

    /**
     * Constructs a new <tt>HashMap</tt> with the same mappings as the
     * specified <tt>Map</tt>.  The <tt>HashMap</tt> is created with
     * default load factor (0.75) and an initial capacity sufficient to
     * hold the mappings in the specified <tt>Map</tt>.
     *
     * @param   m the map whose mappings are to be placed in this map
     * @throws  NullPointerException if the specified map is null
     */
    public HashMap(Map<? extends K, ? extends V> m) {
        this.loadFactor = DEFAULT_LOAD_FACTOR;
        putMapEntries(m, false);
    }
```

`tableSizeFor()`源码如下：

```java
// 寻找到大于等于cap的最小的2的幂
    static final int tableSizeFor(int cap) {
        // cap 一定是在两个幂之间，不妨记做 2^(k+1) > cap >= 2^k
        // 如果cap恰好是2的幂，即cap = 2^k = 100000...0(共有k个0），n = 0111111...11(共有k个1），然后连续五次或上逻辑移位，不变
        // 所以，只要cap在正常范围内（即 0 < cap < MAXIMUM_CAPACITY)，返回的n+1 == cap，即2^k
        // 若cap 不是2的幂，则 cap = 10101...0(除了第k+1位是1，其他的可以是任意，但一定不是全零，因为k > 2^k)
        // 第一次 n>>>1则第k+1位的1移到了第k位，或上n之后，n至少有2个1，即第k+1和第k位都是1， n = 11.....
        // 第二次 n>>>2则第k+1位和第k位的1移到了第k-1位和第k-2位，或上n之后，n至少有4个1，即第k+1, 第k, 第k-1, 第k-2位, n = 1111...
        // 同理，一直到n>>>16，再或上n，那么必然在这之前或者恰好在这一次，从n的第k+1位到第1位都是1，即n = 000.. 111111...1(从第k+1位到第1位），
        // 这要看k的大小，如果k < 8，则n>>>8已经是全零了，或上0不改变大小。总之最后得到的一定是从k+1位全1的串
        // 这恰好是2^(k+1)-1,即大于cap的最小2的幂
        int n = cap - 1;
        n |= n >>> 1;
        n |= n >>> 2;
        n |= n >>> 4;
        n |= n >>> 8;
        n |= n >>> 16;
        return (n < 0) ? 1 : (n >= MAXIMUM_CAPACITY) ? MAXIMUM_CAPACITY : n + 1;
    }
```

### putMapEntries方法

```java
    /**
     * Implements Map.putAll and Map constructor.
     *
     * @param m the map
     * @param evict false when initially constructing this map, else
     * true (relayed to method afterNodeInsertion).
     */
    final void putMapEntries(Map<? extends K, ? extends V> m, boolean evict) {
        int s = m.size();
        if (s > 0) { 
            if (table == null) { // pre-size, 如果table未初始化
                float ft = ((float)s / loadFactor) + 1.0F;
                int t = ((ft < (float)MAXIMUM_CAPACITY) ?
                         (int)ft : MAXIMUM_CAPACITY);
                if (t > threshold)
                    threshold = tableSizeFor(t);
            }
            else if (s > threshold) // 如果table已初始化，且m的大小大于阈值，则需要扩容
                resize();
            for (Map.Entry<? extends K, ? extends V> e : m.entrySet()) {
                K key = e.getKey();
                V value = e.getValue();
                putVal(hash(key), key, value, false, evict); // 主要调用了putVal把键值对放进去
            }
        }
    }
```



### put方法

put方法主要调用了**putVal**方法，**putVal**方法的主要逻辑是：

- 如果定位到的箱中没有元素，直接插入
- 否则，如果第一个元素和要插入的键值对相同，根据需要(onlyIfAbsent)更新值或者不更新
- 如果第一个元素不相等，则要区分这个箱中是红黑树还是链表

  - 如果是红黑树，调用putTreeVal在这棵树中找到和键值对相同的节点或者插入一个节点，返回null（e = null)
  - 如果是链表，遍历整个链表，如果到表尾都没找到，则直接在末尾添加一个元素，在遍历的同时记录桶的长度（binCount没有计数桶中第一个元素，所以它判断时用了减一），如果链表长度超过`TREEIFY_THRESHOLD`，则调用`treeify`转化为红黑树（当然还要先判断数组长度），退出循环
  - 如果在遍历过程中就找到了，退出循环
- 如果找到了匹配的节点(e != null)，则视情况是否需要修改；
- 如果插入了节点，则是结构性修改，++modCount，并且判断是否此时数组中数据个数超出阈值，若是则扩容

```java
     
    // 如果put(key, value)返回的是null不能说明该键值对不存在，也可能是之前的key对应的value == null
    public V put(K key, V value) {
        return putVal(hash(key), key, value, false, true);
    }

 
    final V putVal(int hash, K key, V value, boolean onlyIfAbsent,
                   boolean evict) {
        Node<K,V>[] tab; Node<K,V> p; int n, i;
        if ((tab = table) == null || (n = tab.length) == 0) // 如果table为空或者长度为0
            n = (tab = resize()).length; // 之前初始化并未真正分配table，而是推迟到这里——即第一次插入元素时
        if ((p = tab[i = (n - 1) & hash]) == null) // 找到key对应的箱p为空，则直接创建一个新Entry
            tab[i] = newNode(hash, key, value, null);
        else { // 否则，箱不空时，p即为该箱中第一个元素
            Node<K,V> e; K k;
            if (p.hash == hash &&
                ((k = p.key) == key || (key != null && key.equals(k)))) // 判断p是否和key相同
                e = p; // 用e记录key应该对应的元素
            else if (p instanceof TreeNode) // 否则桶中第一个元素不等于key；p是树节点
                e = ((TreeNode<K,V>)p).putTreeVal(this, tab, hash, key, value);// 调用putTreeVal插入该键值对，用e记录
            else { // p是链表节点
                for (int binCount = 0; ; ++binCount) { // 利用binCount记录桶中的元素个数，没有记录第一个元素p
                    if ((e = p.next) == null) { // 如果访问到链表尾部还没找到，则添加到链表末尾
                        p.next = newNode(hash, key, value, null);
                        if (binCount >= TREEIFY_THRESHOLD - 1) // 如果桶中元素超过树化阈值，则将链表转成红黑树（注意，在treeifyBin中还要判断是否数组长度大于64，如果不是的话，只是扩容）-1 for 1st,由于第一个没计数
                            treeifyBin(tab, hash);
                        break;
                    }
                    if (e.hash == hash && // 如果找到了和key相同的节点
                        ((k = e.key) == key || (key != null && key.equals(k))))
                        break;
                    p = e; // 遍历链表，配合之前的 e = p.next
                }
            }
            // 表示在桶中找到与key，value键值对相同的节点
            if (e != null) { 
                V oldValue = e.value;
                 // onlyIfAbsent为false或者旧值为null，onlyIfAbsent为true表示只有当值为null才替换
                if (!onlyIfAbsent || oldValue == null)
                    e.value = value;
                // 访问后，回调
                afterNodeAccess(e);
                // 返回旧值
                return oldValue;
            }
        }
        // 新建一个节点，表示结构性修改
        ++modCount;
        if (++size > threshold) // 如果数组中数据个数超过阈值，扩容
            resize();
        // 插入后， 后调
        afterNodeInsertion(evict);
        return null;
    }
```

**treeifyBin**方法

```java
    
    final void treeifyBin(Node<K,V>[] tab, int hash) {
        int n, index; Node<K,V> e;
        // 如果table没有初始化或者容量太小，则直接扩容即可
        if (tab == null || (n = tab.length) < MIN_TREEIFY_CAPACITY)
            resize();
        // 数组中hash对应的箱必须不空才会转为红黑树
        else if ((e = tab[index = (n - 1) & hash]) != null) {
            TreeNode<K,V> hd = null, tl = null;
            do {
                TreeNode<K,V> p = replacementTreeNode(e, null);
                if (tl == null)
                    hd = p;
                else {
                    p.prev = tl;
                    tl.next = p;
                }
                tl = p;
            } while ((e = e.next) != null);
            if ((tab[index] = hd) != null)
                hd.treeify(tab);
        }
    }
```



### resize方法

在HashMap中，桶数组的长度均是2的幂，阈值大小为容量与负载因子的乘积。当HashMap中的键值对数量超过阈值时，进行扩容。

HashMap的扩容机制与其他变长集合的套路不太一样，HashMap按当前桶数组长度的两倍进行扩容，阈值也变为原来的2倍（如果计算过程中，阈值溢出归零，则按阈值公式重新计算）。扩容后，需要重新计算键值对的数量，并把它们移动到合适的位置上去。以上就是HashMap的扩容大致过程，接下来我们来看具体的实现：

```java
final Node<K,V>[] resize() {
        Node<K,V>[] oldTab = table;
        int oldCap = (oldTab == null) ? 0 : oldTab.length;
        int oldThr = threshold;
        int newCap, newThr = 0;
        if (oldCap > 0) { // 如果table不空，表明已经初始化过了
            if (oldCap >= MAXIMUM_CAPACITY) { 
                // 当table容量超过容量最大值，则不再扩容，就让它碰撞吧
                threshold = Integer.MAX_VALUE;
                return oldTab;
            }
            // 按旧容量和阈值的2倍计算新容量和阈值
            else if ((newCap = oldCap << 1) < MAXIMUM_CAPACITY &&
                     oldCap >= DEFAULT_INITIAL_CAPACITY)
                newThr = oldThr << 1; // double threshold
        }
        // 如果table为空，且阈值大于0，则新容量就等于就阈值，就是调用构造函数HashMap(int, float)和HashMap(int) 的情况
        else if (oldThr > 0) // initial capacity was placed in threshold
            newCap = oldThr;
        // 否则，table为空，且阈值等于0，即为使用默认构造函数的情况，使用默认容量，重新计算阈值
        else {               // zero initial threshold signifies using defaults
            newCap = DEFAULT_INITIAL_CAPACITY;
            newThr = (int)(DEFAULT_LOAD_FACTOR * DEFAULT_INITIAL_CAPACITY);
        }
        if (newThr == 0) { // 如果这个时候新阈值还等于0，比如 else if (oldThr > 0)的情况或者新阈值计算溢出，则重新计算
            float ft = (float)newCap * loadFactor;
            newThr = (newCap < MAXIMUM_CAPACITY && ft < (float)MAXIMUM_CAPACITY ?
                      (int)ft : Integer.MAX_VALUE);
        }
        threshold = newThr;
        // 到这里threshold计算完毕
  
        @SuppressWarnings({"rawtypes","unchecked"})
        // 分配新数组
        Node<K,V>[] newTab = (Node<K,V>[])new Node[newCap];
        table = newTab;
        if (oldTab != null) { // 如果就数组不为空，则需要将原来的元素rehash，并且复制到新数组中
            for (int j = 0; j < oldCap; ++j) { // 遍历旧数组
                Node<K,V> e;
                if ((e = oldTab[j]) != null) { // 找到不空的桶
                    oldTab[j] = null;  // 使用e保存，释放oldTab[j]，交给GC
                    // 如果这个桶只有一个元素，则直接找到在扩容后的数组的桶
                    if (e.next == null) 
                        newTab[e.hash & (newCap - 1)] = e;
                    // 否则，判断是树节点还是链表，树节点重新映射时需要先拆分
                    else if (e instanceof TreeNode) 
                        ((TreeNode<K,V>)e).split(this, newTab, j, oldCap);
                    // 链表重新映射时，将该条链表中元素分组（按照 e.hash & oldCap），注意这个分组仍然保持原链表顺序
                    else { // preserve order
                        Node<K,V> loHead = null, loTail = null; // low组头尾
                        Node<K,V> hiHead = null, hiTail = null; // high组头尾
                        Node<K,V> next; // 遍历链表指针
                        do {
                            next = e.next;
                            if ((e.hash & oldCap) == 0) {
                                if (loTail == null)
                                    loHead = e;
                                else
                                    loTail.next = e;
                                loTail = e;
                            }
                            else {
                                if (hiTail == null)
                                    hiHead = e;
                                else
                                    hiTail.next = e;
                                hiTail = e;
                            }
                        } while ((e = next) != null); // 往后遍历，配合next = e.next
                        // 将分组后的链表(仍然在原来的索引位置)放到数组中
                        if (loTail != null) {
                            loTail.next = null;
                            newTab[j] = loHead;
                        }
                        // 将分组后的链表(索引等于原来的索引+oldCap)放到数组中
                        if (hiTail != null) {
                            hiTail.next = null;
                            newTab[j + oldCap] = hiHead;
                        }
                    }
                }
            }
        }
        return newTab;
    }
```

上面的源码主要做了三件事：

1. 计算新桶数组的容量和阈值
2. 分配新桶数组
3. 将键值对节点重新映射到新的桶数组里。如果节点是TreeNode类型，则需要拆分红黑树，如果是普通节点，则按链表顺序分组

第一步计算newCap和newThr的具体讨论可以查看https://segmentfault.com/a/1190000012926722

下面主要讨论第三步链表分组

在JDK 1.8中，重新映射节点需要考虑节点类型。对于树形节点，需要先拆分红黑树再映射，对于链表类型节点，需要先对链表进行分组，然后再映射。需要注意的是，分组后仍保持原链表中的相对顺序。

我们都知道往底层数据结构中插入节点时，一般都是先通过模运算计算桶位置，接着把节点放入桶中即可。事实上我们可以把重新映射看做插入操作。在JDK1.7 中，也确实是这样做的，但在JDK 1.8中，则对这个过程做了一定的优化。在详细分析前，我们先来回顾一下hash求余的过程：

![](../../pic/Java_HashMap_1.png)



上图中，桶数组大小 n = 16，hash1与hash2不相等，但因为只有后4位参与求余（注意这里说的求余，其实是(n-1) & hash)，所以结果相等，映射到同一个桶中。当桶数组扩容后，n由36变成了32，对上面的hash值重新进行映射：

![](../../pic/Java_HashMap_2.png)

扩容后，参与模运算的位数由4位变成了5位，由于两个 hash 第5位的值时不一样，所以两个 hash 算出的结果也不一样。注意 hash1 由于第5位为1，所以它的新的桶索引为原索引加上16，即index + oldCap；而 hash2 由于第5位为0，所以它在新的桶数组的索引不变。

由这个例子很容易推广到一般情况，重新映射(rehash)的情况，由于新的数组长度是旧数组的2倍，所以同样的原来在同一个桶中的所有元素，会分成两部分（根据新的参与模运算的最高位是否为1），一部分索引不变，另一部分索引为 index + oldCap。

所以重新映射可以这样来做，遍历整个链表，将它们分成两组，然后分别插入到新数组的新的桶中，此时仍然保持了原来链表的顺序。

```java
else { // preserve order
  Node<K,V> loHead = null, loTail = null; // low组头尾,即参与模运算的最高位为0
  Node<K,V> hiHead = null, hiTail = null; // high组头尾，即参与模运算的最高位为1
  Node<K,V> next; // 遍历链表指针
  do {
    next = e.next;
    if ((e.hash & oldCap) == 0) { // low组
      if (loTail == null) // 如果目前loHead到loTail中没有元素，则loHead = e
        loHead = e;
      else               // 否则将e加到loTail后面
        loTail.next = e;
      loTail = e;        // 移动loTail到末尾
    }
    else {               // high组
      if (hiTail == null)
        hiHead = e;
      else
        hiTail.next = e;
      hiTail = e;
    }
  } while ((e = next) != null); // 往后遍历，配合next = e.next
  // 将分组后的low组链表放到数组中
  if (loTail != null) {
    loTail.next = null; // 设置末尾元素的next元素
    newTab[j] = loHead; // low组的新索引仍为j
  }
  // 将分组后的high组链表放到数组中
  if (hiTail != null) {
    hiTail.next = null;
    newTab[j + oldCap] = hiHead; // high组的新索引为j + oldCap
  }
}
```







