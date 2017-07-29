[![Build Status](https://travis-ci.org/maeteno/design-pattern-java.svg?branch=master)](https://travis-ci.org/maeteno/design-pattern-java)

下面的对模式的描述不一定非常准确，甚至可能会误导。所以如果你不幸的看到了，请只作为参考。以下解释一般基于自己理解。更加准确详细的描述请参考以下连接

[Blog](https://blog.maeteno.me/tag/%E8%AE%BE%E8%AE%A1%E6%A8%A1%E5%BC%8F)  

[菜鸟教程](http://www.runoob.com/design-pattern/design-pattern-tutorial.html)  

# 创建型模式
创建型模式都是设计和解决如何创建对象和生成对象的模式

## 工厂模式（Factory）
工厂模式就是通过一个类去创建对象，而不是自己直接的去创建对象。使用者只要告诉工厂对象你需要的对象是什么。工厂会返回一个你需要的对象，例如通过数据库的表明获取一个对应的ORM对象。

## 抽象工厂模式（Abstract Factory）
抽象工厂模式就是对工厂模式的升级，抽象工厂返回的不是一个可以直接使用的对象，而是一个工厂。

## 单例模式（Singleton）
单例模式就是保证这个类的对象只有一个，一般可以作为一个全局的对象来使用。类似与别的语言中的全局变量。在面向对象语言中一般都是将构造函数私有化来实现的。

## 构造者模式（Builder）
构造者模式，其实是对复用的另外一种实现。建造者模式（Builder Pattern）使用多个简单的对象一步一步构建成一个复杂的对象。这种类型的设计模式属于创建型模式，它提供了一种创建对象的最佳方式。
一个 Builder 类会一步一步构造最终的对象。该 Builder 类是独立于其他对象的。就像组装汽车一样。

## 原型模式（Prototype）
原型模式（Prototype Pattern）是用于创建重复的对象，同时又能保证性能。这种类型的设计模式属于创建型模式，它提供了一种创建对象的最佳方式。
这种模式是实现了一个原型接口，该接口用于创建当前对象的克隆。当直接创建对象的代价比较大时，则采用这种模式。例如，一个对象需要在一个高代价的数据库操作之后被创建。我们可以缓存该对象，在下一个请求时返回它的克隆，在需要的时候更新数据库，以此来减少数据库调用。可以说原型模式就是克隆模式。

# 结构型模式
结构型的设计模式决定了代码的结构，类之间的关系和调用依赖。

## 适配器模式（Adapter Pattern）
目标兼容已有接口，兼容模式

## 桥接模式（Bridge Pattern）
依赖注入，通过更换相关对象，可改变一个对象的行为。桥接器将两个对象连接在一起（一个负责数据一个负责动作）来共同完成一个业务

## 组合模式（Composite Pattern）
组合模式针对的是一组相似的对象，对这些对象进行组合。最后形成一个类似树状的组织架构图，它可以用于描述一组相似对象之间的关系。例如描述一个组织架构中人员的关系。

## 装饰器模式（Decorator Pattern）
修饰一个已经存在的类的行为。不改变原有的类，给原有的类添加额外的功能。但是并不能改变一个类的内部行为，有点像一个中间件，在一个类的动作之前或之后添加而外的功能。典型的例如Python的装饰器，java的注解（这个我没有太深入的研究，感觉应该也是的）。

## 外观模式（Facade Pattern）
隐藏系统的复杂性，并向客户端提供了一个客户端可以访问系统的接口。将一些细粒度的功能组合在一起例,如微服务的API Gateway（API网关）.

## 享元模式（Flyweight Pattern）
主要用于减少创建对象的数量，以减少内存占用和提高性能。这里和原型模式有点像，但是本质上却不一样。原型模式中是以一个对象作为模版进行复制。而享元模式并不是进行克隆，而是直接拿过来用。这里一般和工厂模式配合使用，当通过工厂获取到一个对象的时候，已经存在的直接返回。没有就再创建。在这里需要考虑存在多个引用的时候之间的影响。

## 代理模式（Proxy Pattern）
代理模式就是在调用者中间添加一个中间人，在某些情况下调用方无法直接访问的时候，类似与VPN

# 行为型模式
行为型模式设计模式是设计和改变类的行为方式的

## 责任链模式（Chain of Responsibility Pattern）
为请求创建了一个接收者对象的链。这种模式给予请求的类型，对请求的发送者和接收者进行解耦。这种类型的设计模式属于行为型模式。
在这种模式中，通常每个接收者都包含对另一个接收者的引用。如果一个对象不能处理该请求，那么它会把相同的请求传给下一个接收者，依此类推。
类似与JS的事件冒泡，也是将请求一步步传递下去。
Laravel的中间件也是通过这么方式将request进行传递的。

## 命令模式（Command Pattern）
命令模式是一种数据驱动的设计模式，它属于行为型模式。请求以命令的形式包裹在对象中，并传给调用对象。调用对象寻找可以处理该命令的合适的对象，并把该命令传给相应的对象，该对象执行命令。
`命令模式`和`责任链模式`的行为有点类似，但是仔细一看取有很多根本的区别。可以说完全不一样的模式行为。

1. 传递的对象不同：在责任链模式上传递的是业务的处理数据，而命令模式这是执行业务的对象。
2. 职责的不用：在责任链上是要负责处理业务，并将数据传递下去。他需要处理业务和传递数据。而命令模式只需要负责发送执行业务的命令即可，并且可以将多个命令串联执行。

在命令模式中，需要封装好不同业务场景所需要的的命令。最后可以将所以的命令安顺序的添加，最后再执行。这里有点像把细粒度的业务合并成一个命令执行。就像是Linux命令行中用`&&`把一步一步的命令组合成一个命令来执行。在实际业务中可能要考虑到数据的一致性，在某个只命令失败的时候如何回滚数据。

## 解释器模式（Interpreter Pattern）
解释器模式其实就是解析表达式，例如定义不同的SQL方言解析器。运算符解析器。

## 迭代器模式（Iterator Pattern）
迭代器模式就是遍历模式，实现迭代器模式就是返回一个迭代器。迭代器每次返回当前的元素并指向下一个元素。有点像数据库的游标和C的指针。
迭代器最少要暴露两个接口，第一就是移动到下一个元素并返回当前元素（`next()`），另外一个就是判断是否还存在下一个元素（`hasNext()`）。

## 中介者模式（Mediator Pattern）
中介者模式（Mediator Pattern）是用来降低多个对象和类之间的通信复杂性。这种模式提供了一个中介类，该类通常处理不同类之间的通信，并支持松耦合，使代码易于维护。中介者模式属于行为型模式。
一个类的业务通过调用一个中介类的完成。通过控制中介类来管理多个对象和类之间的通信以及业务。
