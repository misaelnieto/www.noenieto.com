#!/bin/bash

echo "Building LM317 calculator ..."
git clone git@github.com:misaelnieto/lm317-calculator.git _lm317
cd _lm317
yarn install
yarn build
mkdir -p ../demos/lm317-calculator/
mv build/* ../demos/lm317-calculator/
cd ..
echo "Building LM317 calculator ... DONE"
