#!/bin/bash

# 进入目录
cd ./out/

# run factory
echo "=============run factory============="
java creation.factory.FactoryPatternDemo

# run abstractfactory
echo "=============run abstractfactory============="
java creation.abstractfactory.AbstractFactoryPatternDemo

# run singleton
echo "=============run singleton============="
java creation.singleton.SingletonPatternDemo

# run builder
echo "=============run builder============="
java creation.builder.BuilderPatternDemo

# run prototype
echo "=============run prototype============="
java creation.prototype.PrototypePatternDemo

# run adapter
echo "=============run adapter============="
java structural.adapter.AdapterPatternDemo

# run bridge
echo "=============run bridge============="
java structural.bridge.BridgePatternDemo

# run filter
echo "=============run filter============="
java structural.filter.CriteriaPatternDemo

# run bridge
echo "=============run bridge============="
java structural.composite.CompositePatternDemo

# run decorator
echo "=============run decorator============="
java structural.decorator.DecoratorPatternDemo

# run facade
echo "=============run facade============="
java structural.facade.FacadePatternDemo

# run flyweight
echo "=============run flyweight============="
java structural.flyweight.FlyweightPatternDemo

# run proxy
echo "=============run proxy============="
java structural.proxy.ProxyPatternDemo

# run responsibility
echo "=============run responsibility============="
java behavioral.responsibility.ChainPatternDemo

# run command
echo "=============run command============="
java behavioral.command.CommandPatternDemo

# run command
echo "=============run command============="
java behavioral.interpreter.InterpreterPatternDemo

# run iterator
echo "=============run iterator============="
java behavioral.iterator.IteratorPatternDemo

# run mediator
echo "=============run mediator============="
java behavioral.mediator.MediatorPatternDemo

# run memento
echo "=============run memento============="
java behavioral.memento.MementoPatternDemo

# run observer
echo "=============run observer============="
java behavioral.observer.ObserverPatternDemo

# run state
echo "=============run state============="
java behavioral.state.StatePatternDemo

# run state
echo "=============run nullobject============="
java behavioral.nullobject.NullPatternDemo

# run strategy
echo "=============run strategy============="
java behavioral.strategy.StrategyPatternDemo

# run template
echo "=============run template============="
java behavioral.template.TemplatePatternDemo

# run visitor
echo "=============run visitor============="
java behavioral.visitor.VisitorPatternDemo

# run visitor
echo "=============run mvc============="
java framework.mvc.MVCPatternDemo

# run businessdelegate
echo "=============run businessdelegate============="
java framework.businessdelegate.BusinessDelegatePatternDemo

# run CompositeEntityPatternDemo
echo "=============run CompositeEntityPatternDemo============="
java framework.compositeentity.CompositeEntityPatternDemo

# run dao
echo "=============run dao============="
java framework.dao.DaoPatternDemo

# run frontcontroller
echo "=============run frontcontroller============="
java framework.frontcontroller.FrontControllerPatternDemo

# run intercepting
echo "=============run intercepting============="
java framework.intercepting.InterceptingFilterDemo

# run servicelocator
echo "=============run servicelocator============="
java framework.servicelocator.ServiceLocatorPatternDemo

# run transferobject
echo "=============run transferobject============="
java framework.transferobject.TransferObjectPatternDemo


cd ..
