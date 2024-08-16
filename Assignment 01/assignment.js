 // IU2141230143 - PURVA PANCHAL


//q1
function isAnagram(str1, str2) {
    
    function normalize(str) {
        return str
            .toLowerCase() 
            .replace(/[^a-z0-9]/g, '')
            .split('') 
            .sort() 
            .join(''); 
    }

   
    return normalize(str1) === normalize(str2);
}

console.log(isAnagram("listen", "silent"));
console.log(isAnagram("hello", "world"));   
console.log(isAnagram("rock", "crock"));   

//q2
function calculateTotalSpentByCategory(transactions) {
    // Step 1: Initialize an empty object to store total amounts by category
    const categoryTotals = {};

    // Step 2: Iterate through the list of transactions
    transactions.forEach(transaction => {
        const { category, amount } = transaction;

        // Initialize the category if it doesn't exist
        if (!categoryTotals[category]) {
            categoryTotals[category] = 0;
        }

        // Update the total amount spent for the category
        categoryTotals[category] += amount;
    });

    // Step 3: Convert the object into an array of objects
    return Object.keys(categoryTotals).map(category => ({
        category,
        totalSpent: categoryTotals[category]
    }));
}

// Example usage:
const transactions = [
    { category: 'Groceries', amount: 50 },
    { category: 'Utilities', amount: 100 },
    { category: 'Groceries', amount: 30 },
    { category: 'Entertainment', amount: 70 },
    { category: 'Utilities', amount: 50 }
];

console.log(calculateTotalSpentByCategory(transactions));

//q3
function findLargestElement(numbers) {
    if (numbers.length == + 0) {
        return null;
    }

    let largest = numbers[0];
    for (let i = 1; i < numbers.length; i++) {
        if (numbers[i] > largest) {
            largest = numbers[i];
        }
    }
    return largest;
}

const numbers = [2, 4, 2, 4, 6, 8, 3, 6, 83, 625, 24, 7, 55, 6, 66, 4];
console.log(findLargestElement(numbers));

//q4
function IsPalindrome(text) {
    const normalizedtext = text.replace(/[^A-za-z0-9]/g, '').toLowerCase();

    const reservedtext = text.split("").reverse().join("");

    return normalizedtext === reservedtext;

}
console.log(IsPalindrome("racecar"));
console.log(IsPalindrome("hello"));
console.log(IsPalindrome("sun"));
//q5
function calculateTime(n) {
    
    let startTime = performance.now();

   
    let sum = 0;
    for (let i = 1; i <= n; i++) {
        sum += i;
    }

    let endTime = performance.now();

    
    let timeTaken = (endTime - startTime) / 1000;

    return timeTaken;
}


let n = 1000000;
console.log(`Time taken to calculate sum from 1 to ${n}: ${calculateTime(n)} seconds`);

//q6
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

//q7

function sumArray(numbers) {
    return numbers.reduce((acc, curr) => acc + curr, 0);
}


let exampleArray = [1, 2, 3, 4, 5];
console.log(`Sum of the array: ${sumArray(exampleArray)}`);

//q8

function filterEvenNumbers(numbers) {
    return numbers.filter(number => number % 2 === 0);
}

let examplArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
console.log(`Even numbers in the array: ${filterEvenNumbers(exampleArray)}`);


//q9
function findSmallestElement(numbers) {
    return Math.min(...numbers);
}


let exampleeArray = [34, -50, 23, 77, -1, 4, 55];
console.log(`The smallest element in the array is: ${findSmallestElement(exampleArray)}`);

//q10
function reverseString(str) {
    return str.split('').reverse().join('');
}


let exampleeString = "Hello, World!";
console.log(`Reversed string: ${reverseString(exampleString)}`);

//q11
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


//q12
function removeDuplicates(arr) {
    return [...new Set(arr)];
}


let exampleArray1 = [1, 2, 2, 3, 4, 4, 5, 6, 6, 7];
console.log(`Array with duplicates removed: ${removeDuplicates(exampleArray)}`);


//q13
function countOccurrences(str, char) {
    let count = 0;
    for (let i = 0; i < str.length; i++) {
        if (str[i] === char) {
            count++;
        }
    }
    return count;
}


let exampleString1 = "Hello, World!";
let exampleChar = "o";
console.log(`The character '${exampleChar}' appears ${countOccurrences(exampleString, exampleChar)} times in the string "${exampleString}".`);

//q14
function findCommonElements(arr1, arr2) {
    return arr1.filter(element => arr2.includes(element));
}


let array1 = [1, 2, 3, 4, 5];
let array2 = [4, 5, 6, 7, 8];
console.log(`Common elements: ${findCommonElements(array1, array2)}`);


//q15
function sortStrings(arr) {
    return arr.sort((a, b) => a.localeCompare(b));
}

let exampleArray2 = ["banana", "apple", "cherry", "date"];
console.log(`Sorted array: ${sortStrings(exampleArray)}`);



