# Spring IOC

1. 概念： 控制反转即将原本由程序控制的创建对象权利，通过set方法或者构造器来注入，实现对象控制权反转，将创建对象权利交给用户来完成，以实现解耦，同时减轻程序的压力，更有利于程序应对层出不穷的需求变化。

   

   在Spring中，控制反转意味着将对象的管理交给Spring IOC容器（一般指ApplicationContext），需要的时候从容器中获取，Spring IOC容器自动销毁对象，减少程序的复杂度。但这也意味着，需要额外完成一些事情来告知Spring IOC容器，那些对象是交给容器的，并且告知IOC容器对象的依赖（即对象内部的属性等）。Spring IOC容器可以管理几乎所有对象，而不仅是Java bean对象，Spring将它管理的对象称为bean。

   

2. Spring 使用xml配置文件开发

   **注册bean**，通过xml文件的方式

   Spring **依赖注入**的方式主要有两种：**通过Set注入或者构造器注入**

   **Spring** **装配bean的方式有：**

   \- 显式装配，通过xml配置文件，显式配置bean及依赖, <bean/>, <property/> ,还有类似Array, List, Map, Set, Property等对象的注入

   ​          <bean id class value/ref scope autowire=“byName/byType" />

   \- JavaConfig

   \- 隐式自动装配： **通过注解； 首先引入注解约束，开启注解支持<context:annotation-config/>**

     常用注解有：

     ① @Autowired：只要依赖的bean已经在容器中存在，并且Spring IOC容器可以通过byName或者byType的方式在上下文自动查找到。可以标注在set方法或者属性上

     ② @Nullable: Java本身的注解，说明该bean可以为空，允许为null，或者显式定义了@Autowired(required=False)

     ③ @Qualifier(value=)可以使用Qualifier注解配合@Autowired使用，指定自动装配的bean的id或者name，

     ④ @Resource 是Java本身的注解，也可以实现自动装配，是一个组合注解

     

3. Spring 使用注解开发

   **在Spring 4之后，要使用注解开发，则必须导入AOP包**

   1）**<component-scan/>指定扫描的包，导入注解约束，开启注解支持**

   2）@Component 放在类上，注册bean，bean的名字默认是小写类名

   3）@Value 放在属性上或者放在set方法上，注入值

   4）衍生注解，在Web开发中可以使用@Repository——DAO层、@Service——Service层（业务层）、@Controller——Controller层，等价于@Component，它们四个功能都是一样，都是将某个类注册到IOC容器中

   5）作用域 @Scope: Singleton 单例， prototype 原型

   总结——最佳实践：xml用来管理bean, 注解只负责属性的注入

   

4. Spring 使用Java的方式配置Spring

```java
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


// 配置类
@Configuration
@ComponentScan("com.caozs.demo03")
public class JavaConfig {
    @Bean
    public Landlord landlord() {
        return new Landlord();
    }

    @Bean
    public Renter renter() {
        return new Renter();
    }
}

// 实体类
@Component
public class Renter {
    @Value("An Client")
    private String name;
    @Autowired
    private Landlord landlord;

    public Renter() {

    }

    public Renter(String name, Landlord landlord) {
        this.name = name;
        this.landlord = landlord;
    }

    public void setName(String name) {
        this.name = name;
    }


//    public void setLandlord(Landlord landlord) {
//        this.landlord = landlord;
//    }

    public void rentHouse() {
        landlord.rent(this);
    }

    @Override
    public String toString() {
        return "Renter{" +
                "name='" + name + '\'' +
                ", landlord=" + landlord +
                '}';
    }
}

@Component
public class Landlord implements Renting {
    @Value("Caozs's House")
    private String myHouse;

    public Landlord() {
    }

    public Landlord(String myHouse) {
        this.myHouse = myHouse;
    }


    public void setMyHouse(String myHouse) {
        this.myHouse = myHouse;
    }

    @Override
    public void rent(Renter t) {
        System.out.println("[debug] 日志");
        System.out.println("房东将" + myHouse + "租给" + t);
        System.out.println("【debug] 日志");
    }
}


// 测试类
public class Demo03Test {
    public static void main(String[] args) {
        ApplicationContext context = new AnnotationConfigApplicationContext(JavaConfig.class);
        Renter renter = context.getBean("renter", Renter.class);
        renter.rentHouse();
    }
}
```

