function filterEvenNumbers(numbers) {
    return numbers.filter(number => number % 2 === 0);
}


let exampleArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
console.log(`Even numbers in the array: ${filterEvenNumbers(exampleArray)}`);
