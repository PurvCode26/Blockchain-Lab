function reverseString(str) {
    return str.split('').reverse().join('');
}


let exampleString = "Hello, World!";
console.log(`Reversed string: ${reverseString(exampleString)}`);
