# NodeJS Addons Performance Evaluation
This is a simple NodeJS addons performance evaluation used as a self documentation. 
But you are more than welcome to use or branch this repository. 


## Intro
I've used the Addons feature of Node JS to create a simple C++ function which implements a method to calculate the nth Fibonacci number.
The same method also is implemented as a Javascript function. This non optimized method of calculating the nth Fibonacci is used to test a time consuming process and comparing the time required for an Addons function vs a Javascript function to do the same calculation.

Javascript implementation of Fibonacci function
```
// Fibonacci funcion
function fibonacci(n) {
  if (n < 2) {
    return 1;
  } else {
    return fibonacci(n - 2) + fibonacci(n - 1);
  }
}

// setup the timer
console.time('timer');
console.log('Fibonacci 44: ' + fibonacci(44));
console.timeEnd('timer');
```

Use Addons Fibonacci function implemented in C++
```
var fibonacci = require('./build/Release/fibonacciCPP');

// setup the timer
console.time('timer');
console.log('Fibonacci 44: ' + fibonacci.calculate(44));
console.timeEnd('timer');
```

## Result
The results on my PC:
For example for 44th Fibonacci number I get the following results
- 8869ms for the Javascript function
- 2880ms for the C++ function

![Time consumed for calculating the 28th to 48th fibonacci number for an addons C++ function compared to a Javascript function](https://raw.githubusercontent.com/SamanShafigh/NodeJS-Addons-Performance-Evaluation/master/result/result.png "Time consumed for calculating the 28th to 48th fibonacci number for an addons C++ function compared to a Javascript function")

My PC specifications:
- Ubuntu Release 12.04 (precise) 64-bit
- Kernel Linux 3.11.0-26-generic
- Memory: 7.7 GiB
- Processor: Intel® Core™ i7-3770 CPU @ 3.40GHz × 8 

## How to use:
First you need to install node-gyp
```
npm install -g node-gyp
```

Then run this command to compile the main.cpp file
```
node-gyp configure build
```

For testing the javascrip implementation of fibonacci function run fibonacci-javascript.js
```
node fibonacci-javascript.js
```

The result would be something like:
```
Fibonacci 44: 1134903170 timer: 8869ms
```


For testing the C++ implementation of fibonacci function run fibonacci-cpp.js
```
node fibonacci-cpp.js
```

The result would be something like:
```
Fibonacci 44: 1134903170 timer: 2880ms
```

## More information
1. [Node.js v0.12.7 Manual & Documentation] (https://nodejs.org/api/addons.html)
2. [C++ and Node.js: An Unholy Combination….But Oh So Right] (http://www.benfarrell.com/2013/01/03/c-and-node-js-an-unholy-combination-but-oh-so-right)
3. [Writing Node.js Addons] (http://code.tutsplus.com/tutorials/writing-nodejs-addons--cms-21771)
