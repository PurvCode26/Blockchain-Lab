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
