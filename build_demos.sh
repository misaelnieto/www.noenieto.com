#!/bin/bash

set -ex
echo "Building LM317 calculator ..."
rm -rf _lm317
git clone --depth 1 https://github.com/misaelnieto/lm317-calculator.git _lm317
cd _lm317
yarn install
yarn build
rm -rf ../demos/lm317-calculator/
mkdir ../demos/lm317-calculator/
mv build/* ../demos/lm317-calculator/
cd ..
rm -rf _lm317
echo "Building LM317 calculator ... DONE"
