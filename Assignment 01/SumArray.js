function sumArray(numbers) {
    return numbers.reduce((acc, curr) => acc + curr, 0);
}


let exampleArray = [1, 2, 3, 4, 5];
console.log(`Sum of the array: ${sumArray(exampleArray)}`);
