function findCommonElements(arr1, arr2) {
    return arr1.filter(element => arr2.includes(element));
}


let array1 = [1, 2, 3, 4, 5];
let array2 = [4, 5, 6, 7, 8];
console.log(`Common elements: ${findCommonElements(array1, array2)}`);
