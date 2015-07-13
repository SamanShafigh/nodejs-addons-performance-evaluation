var fibonacci = require('./build/Release/fibonacciCPP');

// setup the timer
console.time('timer');
console.log('Fibonacci 44: ' + fibonacci.calculate(44));
console.timeEnd('timer');
