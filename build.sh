#!/bin/sh

for dir in build output; do
  if [ ! -d $dir ]; then
    mkdir $dir
  fi
  rm -r $dir/*
done

cd build
cmake -DCMAKE_PREFIX_PATH="/Users/user/Qt/5.5/clang_64/" ../src
make
