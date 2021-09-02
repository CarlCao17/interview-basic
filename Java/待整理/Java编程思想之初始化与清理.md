# Java编程思想之初始化与清理

——第五章 初始化与清理

## 数组初始化

数组只是相同类型的、被同一个标识符封装在一起的对象序列或者基本类型数据序列。

1. 数组定义：

   ```java
   // 数组初始化时，不允许指定数组的大小。此时，只有对数组的一个引用；为了给数组创建相应的存储空间，必须要写初始化表达式
   int[] a1;
   int a2[];
   ```

   

2. 数组初始化，可以出现在代码的任何位置

   - 只能出现在定义时：

     ```java
     int[] a = {1, 2, 3, 4,};
     String[] s = {new String(), "ab", null};
     ```

     所有数组都有一个固有成员，`a.length`。和C/C++类似，数组起始坐标从0开始，但是Java会在每次访问数组时做数组下标检查，因此一旦访问下标越界，就会出现运行时错误。

   - 使用 new 初始化数组

     ```java
     int[] a;
     a = new int[20];
     
     // Initial referece array
     Random rand = new Random(47);
     Integer[] b = new Integer[10];
     for (int i = 0; i < b.length; i++) 
       a[i] = rand.nextInt(50);
     ```

     数组大小不必确定，可以在运行时动态确定。

     数组元素中的基本数据类型值会自动初始化成空值。

     即使使用new创建数组之后，它还只是一个引用数组，知道通过创建新的Integer对象，并把对象赋值给引用，初始化进程才算结束。

   - 也可以使用花括号括起来的列表来初始化对象数组：

     ```java
     Integer[] a = {
       new Integer(1),
       new Integer(2),
     }
     
     Integer[] b = new Integer[]{
       new Integer(1),
       new Integer(2),
       3,
     }
     ```

## 可变参数列表

1. 使用`object`数组为参数的方法，调用时必须传递一个`object`数组

   ```java
   class A{}
   
   public class VarArgs {
     static void printArray(Object[] args) {
       for (Object obj : args)
         System.out.print(obj + " ");
       System.out.println();
     }
     public static void main(String[] args) {
       printArray(new Object[]{
         new Integer(47), new Float(3.12), new Double(11.11)
       });
       printArray(new Object[]{"one", "two", "three"});
       printArray(new Object[]{new A(), new A(), new A()});
     }
   }
   ```

   

2. 在Java SE5中，引入了一个新的机制，可以定义可变参数列表，并且调用时传递的可以是若干个可变参数；也可以传递一个`Object`数组；并且可以传入0个参数。

   ```java
   public class OptionalTrailingArguments {
     static void f(int required, String... trailing) {
       System.out.print("required: " + required + " ");
       for (String s: trailing) 
         System.out.print(s +" ");
       System.out.println();
     }
     public static void main(String[] args) {
       f(1, "one");
       f(2, "two", "three");
       f(0);
     }
   }
   ```

   可变参数列表可以使用任何类型的参数，包括基本类型。

3. 如果有多个重载方法时，尽量只在一个版本上使用可变参数列表，或者不用。

