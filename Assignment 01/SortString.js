function sortStrings(arr) {
    return arr.sort((a, b) => a.localeCompare(b));
}

let exampleArray = ["banana", "apple", "cherry", "date"];
console.log(`Sorted array: ${sortStrings(exampleArray)}`);
