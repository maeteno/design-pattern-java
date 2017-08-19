#!/bin/bash

echo "======编译开始======"

echo "======>>  creation"
javac -d ./out/ ./creation/*/*.java

echo "======>>  structural"
javac -d ./out/ ./structural/*/*.java

echo "======>>  behavioral"
javac -d ./out/ ./behavioral/*/*.java

echo "======>>  framework"
javac -d ./out/ ./framework/*/*.java

echo "======编译完成======"
