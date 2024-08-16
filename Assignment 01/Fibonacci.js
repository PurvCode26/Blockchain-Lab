function fibonacci(n) {
    if (n <= 0) {
        return 0;
    } else if (n === 1) {
        return 1;
    }

    let a = 0, b = 1, temp;

    for (let i = 2; i <= n; i++) {
        temp = a + b;
        a = b;
        b = temp;
    }

    return b;
}


let exampleN = 10;
console.log(`The ${exampleN}th Fibonacci number is: ${fibonacci(exampleN)}`);
