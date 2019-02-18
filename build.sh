#!/bin/sh

build_type=$1
if [ -z $build_type ]; then
  build_type=Debug
fi


for dir in build output; do
  if [ ! -d $dir ]; then
    mkdir $dir
  fi
done

for dir in build/$build_type output/$build_type; do
  if [ ! -d $dir ]; then
    mkdir $dir
  fi
  rm -r $dir/*
done

cd build/$build_type
cmake -DCMAKE_PREFIX_PATH="$QT_PREFIX_PATH" -DCMAKE_BUILD_TYPE="$build_type" ../../src
make
