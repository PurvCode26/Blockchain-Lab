function findSmallestElement(numbers) {
    return Math.min(...numbers);
}


let exampleArray = [34, -50, 23, 77, -1, 4, 55];
console.log(`The smallest element in the array is: ${findSmallestElement(exampleArray)}`);
