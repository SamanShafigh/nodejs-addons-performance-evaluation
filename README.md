# NodeJS Addons Performance Evaluation:
This is a simple NodeJS addons performance evaluation used as a self documentation. 
But you are more than welcome to use or branch this repository. 


## Intro
I've used the Addons feature of Node JS to create a simple C++ function which implements a method to calculate the nth Fibonacci number.
The same method also is implemented as a Javascript function. This non optimized method of calculating the nth Fibonacci is used to test a time consuming process and comparing the time required for an Addons function vs a Javascript function to do the same calculation.


## Result
The results on my PC:
- 8869ms for the Javascript function to calculate 44th Fibonacci number
- 2880ms for the C++ function to calculate 44th Fibonacci number


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


For testing the C++ implementation of fibonacci function run fibonacci-javascript.js
```
node fibonacci-cpp.js
```

The result would be something like:
```
Fibonacci 44: 1134903170 timer: 2880ms
```

## More information
[1]: [Node.js v0.12.7 Manual & Documentation] https://nodejs.org/api/addons.html
[2]: [C++ and Node.js: An Unholy Combination….But Oh So Right] (http://www.benfarrell.com/2013/01/03/c-and-node-js-an-unholy-combination-but-oh-so-right)
[3]: [Writing Node.js Addons] (http://code.tutsplus.com/tutorials/writing-nodejs-addons--cms-21771)