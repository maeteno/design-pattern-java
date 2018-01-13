[![Build Status](https://travis-ci.org/maeteno/design-pattern-java.svg?branch=master)](https://travis-ci.org/maeteno/design-pattern-java)  [![Build Status](http://maeteno.com/api/badges/Alan-Fu/design-pattern/status.svg)](http://maeteno.com/Alan-Fu/design-pattern)

下面的对模式的描述不一定非常准确，甚至可能会误导。所以如果你不幸的看到了，请只作为参考。以下解释一般基于自己理解。更加准确详细的描述请参考以下连接

[WIKI](https://wiki.maeteno.me/category/pattern#main)  

[菜鸟教程](http://www.runoob.com/design-pattern/design-pattern-tutorial.html)  

# 目录结构
```yml
- behavioral [行为型]
  - command [命令模式]
  - interpreter [解释器模式]
  - iterator [迭代器模式]
  - mediator [中介者模式]
  - memento [备忘录模式]
  - nullobject [空对象模式]
- creation [创建型]
- framework
- out [编译输出目录]
- structural [结构型]
```


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

## 过滤器模式（Filter、Criteria Pattern）


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

## 备忘录模式（Memento Pattern）
备忘录模式（Memento Pattern）保存一个对象的某个状态，以便在适当的时候恢复对象。备忘录模式属于行为型模式。
其实备忘录模式不如叫可撤销或可返回模式，就像删除后恢复一样。类似CPU中断的时候将寄存器里的状态堆栈保存下来后以便后面恢复寄存器状态一样.就是保存当前对象某个时刻的状态，使这个状态可以被还原。再例如git的reset

## 观察者模式（Observer Pattern）
观察者模式就是简单的事件通知模式，将业务处理对象保存到List中，当事件发生的时候调用List对象中的方法。

## 状态模式（State Pattern）
在状态模式（State Pattern）中，类的行为是基于它的状态改变的。这种类型的设计模式属于行为型模式。
在状态模式中，我们创建表示各种状态的对象和一个行为随着状态对象改变而改变的 context 对象。

在状态模式中，**业务的状态被抽象为一组状态对象。更新业务对象的状态是通过这组对象来改变的，而不是直接去修改业务对象的数据**。在这里可以封装业务对象转换的规则。和代理模式相比代理模式是不改变对象的行为的。

状态模式和命令模式相比，针对性更强。命令模式需要一个集中的命令管理器，而状态模式中每一个状态可以是独立的。不需要一个集中管理的对象。命令模式中各个命令是可以被串联执行的，而状态模式中每个状态更加的独立。

## 空对象模式（Null Object Pattern）
在空对象模式（Null Object Pattern）中，一个空对象取代 NULL 对象实例的检查。Null 对象不是检查空值，而是反应一个不做任何动作的关系。这样的 Null 对象也可以在数据不可用的时候提供默认的行为。
在空对象模式中，我们创建一个指定各种要执行的操作的抽象类和扩展该类的实体类，还创建一个未对该类做任何实现的空对象类，该空对象类将无缝地使用在需要检查空值的地方。
空对象模式就是用一个无动作的对象替代Null，因为null容易报错

## 策略模式（Strategy Pattern）
定义一系列的算法,把它们一个个封装起来, 并且使它们可相互替换。

## 模板模式（Template Pattern）
一个抽象类公开定义了执行它的方法的方式/模板。它的子类可以按需要重写方法实现，但调用将以抽象类中定义的方式进行。这种类型的设计模式属于行为型模式。
模版定义了某个动作的具体执行方式，但是部分的执行细节被定义为抽象的方法。这些细节交给具体的子类去实现，实现类只要关注被拆分的小小功能，真的的执行方式由模版处理。行为由父类控制，子类实现
定义一个操作中的算法的骨架，而将一些步骤延迟到子类中。模板方法使得子类可以不改变一个算法的结构即可重定义该算法的某些特定步骤。

## 访问者模式（Visitor Pattern）
我们使用了一个访问者类，它改变了元素类的执行算法。通过这种方式，元素的执行算法可以随着访问者改变而改变。这种类型的设计模式属于行为型模式。根据模式，元素对象已接受访问者对象，这样访问者对象就可以处理元素对象上的操作。

# 架构模式
业务模型结构

## MVC 模式（MVC Pattern）
MVC 模式代表 Model-View-Controller（模型-视图-控制器） 模式。这种模式用于应用程序的分层开发。

## 业务代表模式（Business Delegate Pattern）
业务代表模式（Business Delegate Pattern）用于对表示层和业务层解耦。它基本上是用来减少通信或对表示层代码中的业务层代码的远程查询功能。在业务层中我们有以下实体

## 组合实体模式（Composite Entity Pattern）
组合实体模式（Composite Entity Pattern）用在 EJB 持久化机制中。一个组合实体是一个 EJB 实体 bean，代表了对象的图解。当更新一个组合实体时，内部依赖对象 beans 会自动更新，因为它们是由 EJB 实体 bean 管理的。以下是组合实体 bean 的参与者。
- 组合实体（Composite Entity） - 它是主要的实体 bean。它可以是粗粒的，或者可以包含一个粗粒度对象，用于持续生命周期。
- 粗粒度对象（Coarse-Grained Object） - 该对象包含依赖对象。它有自己的生命周期，也能管理依赖对象的生命周期。
- 依赖对象（Dependent Object） - 依赖对象是一个持续生命周期依赖于粗粒度对象的对象。
- 策略（Strategies） - 策略表示如何实现组合实体。

## 数据访问对象模式（Data Access Object Pattern）
数据访问对象模式（Data Access Object Pattern）或 DAO 模式用于把低级的数据访问 API 或操作从高级的业务服务中分离出来。以下是数据访问对象模式的参与者。
- 数据访问对象接口（Data Access Object Interface） - 该接口定义了在一个模型对象上要执行的标准操作。
- 数据访问对象实体类（Data Access Object concrete class） - 该类实现了上述的接口。该类负责从数据源获取数据，数据源可以是数据库，也可以是 xml，或者是其他的存储机制。
- 模型对象/数值对象（Model Object/Value Object） - 该对象是简单的 POJO，包含了 get/set 方法来存储通过使用 DAO 类检索到的数据。

## 前端控制器模式（Front Controller Pattern）
前端控制器模式（Front Controller Pattern）是用来提供一个集中的请求处理机制，所有的请求都将由一个单一的处理程序处理。该处理程序可以做认证/授权/记录日志，或者跟踪请求，然后把请求传给相应的处理程序。以下是这种设计模式的实体。
- 前端控制器（Front Controller） - 处理应用程序所有类型请求的单个处理程序，应用程序可以是基于 web 的应用程序，也可以是基于桌面的应用程序。
- 调度器（Dispatcher） - 前端控制器可能使用一个调度器对象来调度请求到相应的具体处理程序。
- 视图（View） - 视图是为请求而创建的对象。

## 拦截过滤器模式（Intercepting Filter Pattern）
拦截过滤器模式（Intercepting Filter Pattern）用于对应用程序的请求或响应做一些预处理/后处理。定义过滤器，并在把请求传给实际目标应用程序之前应用在请求上。过滤器可以做认证/授权/记录日志，或者跟踪请求，然后把请求传给相应的处理程序。以下是这种设计模式的实体。
- 过滤器（Filter） - 过滤器在请求处理程序执行请求之前或之后，执行某些任务。
- 过滤器链（Filter Chain） - 过滤器链带有多个过滤器，并在 Target 上按照定义的顺序执行这些过滤器。
- Target - Target 对象是请求处理程序。
- 过滤管理器（Filter Manager） - 过滤管理器管理过滤器和过滤器链。
- 客户端（Client） - Client 是向 Target 对象发送请求的对象。

## 服务定位器模式（Service Locator Pattern）
实现依赖注入

## 传输对象模式（Transfer Object Pattern）
传输对象模式（Transfer Object Pattern）用于从客户端向服务器一次性传递带有多个属性的数据。传输对象也被称为数值对象。传输对象是一个具有 getter/setter 方法的简单的 POJO 类，它是可序列化的，所以它可以通过网络传输。它没有任何的行为。服务器端的业务类通常从数据库读取数据，然后填充 POJO，并把它发送到客户端或按值传递它。对于客户端，传输对象是只读的。客户端可以创建自己的传输对象，并把它传递给服务器，以便一次性更新数据库中的数值。以下是这种设计模式的实体。
- 业务对象（Business Object） - 为传输对象填充数据的业务服务。
- 传输对象（Transfer Object） - 简单的 POJO，只有设置/获取属性的方法。
- 客户端（Client） - 客户端可以发送请求或者发送传输对象到业务对象。
