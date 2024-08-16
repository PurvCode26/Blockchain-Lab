function countVowels(str) {
    // Define a set of vowels
    const vowels = new Set(['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']);
    let count = 0;

    // Iterate through each character in the string
    for (let char of str) {
        if (vowels.has(char)) {
            count++;
        }
    }

    return count;
}

// Example usage:
let exampleString = "Hello, World!";
console.log(`Number of vowels in "${exampleString}": ${countVowels(exampleString)}`);
