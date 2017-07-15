#!/bin/bash

# build factory
javac -d ./out/ ./factory/FactoryPatternDemo.java

# build abstractfactory
javac -d ./out/ ./abstractfactory/AbstractFactoryPatternDemo.java

# build singleton
javac -d ./out/ ./singleton/SingletonPatternDemo.java
