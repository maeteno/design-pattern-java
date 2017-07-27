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

# filter bridge
javac -d ./out/ ./filter/CriteriaPatternDemo.java

# filter composite
javac -d ./out/ ./composite/CompositePatternDemo.java

# filter decorator
javac -d ./out/ ./decorator/DecoratorPatternDemo.java

# filter facade
javac -d ./out/ ./facade/FacadePatternDemo.java

# filter flyweight
javac -d ./out/ ./flyweight/FlyweightPatternDemo.java -Xlint:unchecked 

# filter proxy
javac -d ./out/ ./proxy/ProxyPatternDemo.java
