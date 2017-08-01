#!/bin/bash

# build factory
javac -d ./out/ ./factory/FactoryPatternDemo.java

# build abstractfactory
javac -d ./out/ ./abstractfactory/AbstractFactoryPatternDemo.java

# build singleton
javac -d ./out/ ./singleton/SingletonPatternDemo.java

# build builder
javac -d ./out/ ./builder/BuilderPatternDemo.java

# build prototype
javac -d ./out/ ./prototype/PrototypePatternDemo.java

# build adapter
javac -d ./out/ ./adapter/AdapterPatternDemo.java

# build bridge
javac -d ./out/ ./bridge/BridgePatternDemo.java

# build bridge
javac -d ./out/ ./filter/CriteriaPatternDemo.java

# build composite
javac -d ./out/ ./composite/CompositePatternDemo.java

# build decorator
javac -d ./out/ ./decorator/DecoratorPatternDemo.java

# build facade
javac -d ./out/ ./facade/FacadePatternDemo.java

# build flyweight
javac -d ./out/ ./flyweight/FlyweightPatternDemo.java -Xlint:unchecked

# build proxy
javac -d ./out/ ./proxy/ProxyPatternDemo.java

# build responsibility
javac -d ./out/ ./responsibility/ChainPatternDemo.java

# build command
javac -d ./out/ ./command/CommandPatternDemo.java

# build interpreter
javac -d ./out/ ./interpreter/InterpreterPatternDemo.java

# build iterator
javac -d ./out/ ./iterator/IteratorPatternDemo.java

# build mediator
javac -d ./out/ ./mediator/MediatorPatternDemo.java

# build Memento
javac -d ./out/ ./memento/MementoPatternDemo.java

# build observer
javac -d ./out/ ./observer/ObserverPatternDemo.java

# build state
javac -d ./out/ ./state/StatePatternDemo.java

# build nullobject
javac -d ./out/ ./nullobject/NullPatternDemo.java

# build strategy
javac -d ./out/ ./strategy/StrategyPatternDemo.java

# build template
javac -d ./out/ ./template/TemplatePatternDemo.java

# build visitor
javac -d ./out/ ./visitor/VisitorPatternDemo.java
