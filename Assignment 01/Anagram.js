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
