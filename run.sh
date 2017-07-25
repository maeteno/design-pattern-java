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

# build bridge
java bridge.BridgePatternDemo

# filter bridge
java filter.CriteriaPatternDemo

cd ..
