var fibonacci = require('./build/Release/fibonacciCPP');

console.time('timer');
console.log('Fibonacci 44: ' + fibonacci.calculate(44));
console.timeEnd('timer');
