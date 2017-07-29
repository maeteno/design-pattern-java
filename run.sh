#!/bin/bash

# 进入目录
cd ./out/

# run factory
echo "=============run factory============="
java factory.FactoryPatternDemo

# run abstractfactory
echo "=============run abstractfactory============="
java abstractfactory.AbstractFactoryPatternDemo

# run singleton
echo "=============run singleton============="
java singleton.SingletonPatternDemo

# run builder
echo "=============run builder============="
java builder.BuilderPatternDemo

# run prototype
echo "=============run prototype============="
java prototype.PrototypePatternDemo

# run adapter
echo "=============run adapter============="
java adapter.AdapterPatternDemo

# run bridge
echo "=============run bridge============="
java bridge.BridgePatternDemo

# run filter
echo "=============run filter============="
java filter.CriteriaPatternDemo

# run bridge
echo "=============run bridge============="
java composite.CompositePatternDemo

# run decorator
echo "=============run decorator============="
java decorator.DecoratorPatternDemo

# run facade
echo "=============run facade============="
java facade.FacadePatternDemo

# run flyweight
echo "=============run flyweight============="
java flyweight.FlyweightPatternDemo

# run proxy
echo "=============run proxy============="
java proxy.ProxyPatternDemo

# run responsibility
echo "=============run responsibility============="
java responsibility.ChainPatternDemo

# run command
echo "=============run command============="
java command.CommandPatternDemo

# run command
echo "=============run command============="
java interpreter.InterpreterPatternDemo

# run iterator
cho "=============run iterator============="
java iterator.IteratorPatternDemo

# run mediator
echo "=============run mediator============="
java mediator.MediatorPatternDemo

# run memento
echo "=============run memento============="
java memento.MementoPatternDemo

# run observer
echo "=============run observer============="
java observer.ObserverPatternDemo

# run state
echo "=============run state============="
java state.StatePatternDemo
cd ..
