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