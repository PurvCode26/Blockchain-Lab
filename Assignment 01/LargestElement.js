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