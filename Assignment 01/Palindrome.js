function IsPalindrome(text) {
    const normalizedtext = text.replace(/[^A-za-z0-9]/g, '').toLowerCase();

    const reservedtext = text.split("").reverse().join("");

    return normalizedtext === reservedtext;

}
console.log(IsPalindrome("racecar"));
console.log(IsPalindrome("hello"));
console.log(IsPalindrome("sun"));