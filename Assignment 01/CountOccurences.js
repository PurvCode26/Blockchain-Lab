function countOccurrences(str, char) {
    let count = 0;
    for (let i = 0; i < str.length; i++) {
        if (str[i] === char) {
            count++;
        }
    }
    return count;
}

// Example usage:
let exampleString = "Hello, World!";
let exampleChar = "o";
console.log(`The character '${exampleChar}' appears ${countOccurrences(exampleString, exampleChar)} times in the string "${exampleString}".`);
