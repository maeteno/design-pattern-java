#!/bin/bash

# 进入目录
cd ./out/

# run factory
java factory.FactoryPatternDemo

# run abstractfactory
java abstractfactory.AbstractFactoryPatternDemo

# run singleton
java singleton.SingletonPatternDemo

# run builder
java builder.BuilderPatternDemo

# run prototype
java prototype.PrototypePatternDemo

# run adapter
java adapter.AdapterPatternDemo

# run bridge
java bridge.BridgePatternDemo

# run filter
java filter.CriteriaPatternDemo

# run bridge
java composite.CompositePatternDemo

# run decorator
java decorator.DecoratorPatternDemo

# run facade
java facade.FacadePatternDemo

# run flyweight
java flyweight.FlyweightPatternDemo

# run proxy
java proxy.ProxyPatternDemo

# run responsibility
java responsibility.ChainPatternDemo

# run command
java command.CommandPatternDemo

# run command
java interpreter.InterpreterPatternDemo

cd ..
