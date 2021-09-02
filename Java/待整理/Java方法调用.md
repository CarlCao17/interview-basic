# Java方法调用









## equals( )方法

Java语言规范要求：

- 自反性：如果`x`是非空引用，则`x.equals(x)`总是返回`true`
- 对称性：对于任意的引用`x`和`y`，若`x.equals(y)`返回`true`当且仅当，`y.equals(x)`返回`true`
- 传递性: 对于任意引用`x`,`y`,`z`，若`x.equals(y) == true`且`y.equals(z) == true`，则`x.equals(z) == true`
- 一致性: 若两个引用`x`和`y`所引用的对象没有发生变化，则重复若干次，结果仍然相同。
- 对于任意非空引用`x`，`x.equals(null) == false`

```java
// 完美地equals()方法
public boolean equals(Object otherObject) {
  // 1. 检测是否是同一个引用
  if (this == otherObject)
    return true;
  // 2. 检测显式参数是否为null
  if (otherObject == null)
    return false;
  // 3. 检测显式参数和隐式参数是否为同一类
  // 如果子类有自己的相等概念，使用getClass()
  if (getClass() != otherObject.getClass())
    return false;
  // 如果只使用超类的相等概念，为了方便比较不同子类，使用isinstanceof
  /*
  if (!(this isinstanceof otherObject))
    return false;
  */
  // 4. 已经是同一类了，可以转换
  ClassName other = (ClassName)otherObject;
  // 5. 比较相应的域的值
  // 对于基础类型使用等号比较，对于对象引用域使用Object.equals()方法
  // Object.equals()方法，当两者皆为null，返回true；其中之一为null,返回false；若两者都不为null,则调用a.equals(b)方法。
  return primitiveField == other.primitiveField && Object.equals(objectReferenceField, other.objectReferenceField);
}
```

