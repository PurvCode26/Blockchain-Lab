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
