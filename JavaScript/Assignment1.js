// Take user input
let name = prompt("Enter your name:");
let age = Number(prompt("Enter your age:"));
let purchaseAmount = Number(prompt("Enter purchase amount:"));

let discount = 0;

if (age < 18) {
  discount += 10;
} else if (age >= 60) {
  discount += 20;
}

if (purchaseAmount > 5000) {
  discount += 5;
}

let finalAmount = purchaseAmount - (purchaseAmount * discount) / 100;

// Output using template literals
console.log(
  `Hi ${name}! You received a total discount of ${discount}%. Final amount: ₹${finalAmount}`,
);
