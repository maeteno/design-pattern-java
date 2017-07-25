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

cd ..
