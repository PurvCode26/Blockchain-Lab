function removeDuplicates(arr) {
    return [...new Set(arr)];
}

// Example usage:
let exampleArray = [1, 2, 2, 3, 4, 4, 5, 6, 6, 7];
console.log(`Array with duplicates removed: ${removeDuplicates(exampleArray)}`);
