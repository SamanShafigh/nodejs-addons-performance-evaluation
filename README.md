# NodeJS Addons Performance Evaluation:

This is a simple NodeJS addons performance evaluation used as my self documention. 
But you are welcome to use or branch this repository.


# How to use:

First you need to install node-gyp
npm install -g node-gyp

Then run this command to compile the main.cpp file
node-gyp configure build

For testing the javascrip implementation of fibonacci function run fibonacci-javascript.js
node fibonacci-javascript.js

The result would be something like:
Fibonacci 44: 1134903170
timer: 8869ms


For testing the C++ implementation of fibonacci function run fibonacci-javascript.js
node fibonacci-javascript.js
