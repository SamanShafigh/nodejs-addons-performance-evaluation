# NodeJS Addons Performance Evaluation:

This is a simple NodeJS addons performance evaluation used as a self documentation. 
But you are more than welcome if you want to use or branch this repository. 

I've used the Addons feature of Node JS to create a simple C++ function which implements a method to calculate the nth Fibonacci number.
The same method also is implemented as a Javascript function. This non optimized method of calculating the nth Fibonacci is used to test a time consuming process and comparing the time required for an Addons function vs a Javascript function to do the same calculation.


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
node fibonacci-cpp.js

The result would be something like:
Fibonacci 44: 1134903170
timer: 2880ms

