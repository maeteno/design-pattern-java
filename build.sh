#!/bin/bash

# build factory
javac -d ./out/ ./creation/factory/FactoryPatternDemo.java

# build abstractfactory
javac -d ./out/ ./creation/abstractfactory/AbstractFactoryPatternDemo.java

# build singleton
javac -d ./out/ ./creation/singleton/SingletonPatternDemo.java

# build builder
javac -d ./out/ ./creation/builder/BuilderPatternDemo.java

# build prototype
javac -d ./out/ ./creation/prototype/PrototypePatternDemo.java

# build adapter
javac -d ./out/ ./structural/adapter/AdapterPatternDemo.java

# build bridge
javac -d ./out/ ./structural/bridge/BridgePatternDemo.java

# build bridge
javac -d ./out/ ./structural/filter/CriteriaPatternDemo.java

# build composite
javac -d ./out/ ./structural/composite/CompositePatternDemo.java

# build decorator
javac -d ./out/ ./structural/decorator/DecoratorPatternDemo.java

# build facade
javac -d ./out/ ./structural/facade/FacadePatternDemo.java

# build flyweight
javac -d ./out/ ./structural/flyweight/FlyweightPatternDemo.java -Xlint:unchecked

# build proxy
javac -d ./out/ ./structural/proxy/ProxyPatternDemo.java

# build responsibility
javac -d ./out/ ./behavioral/responsibility/ChainPatternDemo.java

# build command
javac -d ./out/ ./behavioral/command/CommandPatternDemo.java

# build interpreter
javac -d ./out/ ./behavioral/interpreter/InterpreterPatternDemo.java

# build iterator
javac -d ./out/ ./behavioral/iterator/IteratorPatternDemo.java

# build mediator
javac -d ./out/ ./behavioral/mediator/MediatorPatternDemo.java

# build Memento
javac -d ./out/ ./behavioral/memento/MementoPatternDemo.java

# build observer
javac -d ./out/ ./behavioral/observer/ObserverPatternDemo.java

# build state
javac -d ./out/ ./behavioral/state/StatePatternDemo.java

# build nullobject
javac -d ./out/ ./behavioral/nullobject/NullPatternDemo.java

# build strategy
javac -d ./out/ ./behavioral/strategy/StrategyPatternDemo.java

# build template
javac -d ./out/ ./behavioral/template/TemplatePatternDemo.java

# build visitor
javac -d ./out/ ./behavioral/visitor/VisitorPatternDemo.java

# build mvc
javac -d ./out/ ./framework/mvc/MVCPatternDemo.java

# build businessdelegate;
javac -d ./out/ ./framework/businessdelegate/BusinessDelegatePatternDemo.java

# build compositeentity;
javac -d ./out/ ./framework/compositeentity/CompositeEntityPatternDemo.java

# build DAO
javac -d ./out/ ./framework/dao/DaoPatternDemo.java

# build frontcontroller
javac -d ./out/ ./framework/frontcontroller/FrontControllerPatternDemo.java

# build Interpreter
javac -d ./out ./framework/intercepting/InterceptingFilterDemo.java
