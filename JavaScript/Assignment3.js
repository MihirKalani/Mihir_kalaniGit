let num = 0;

if (num % 2 === 0 && num > 0) {
  console.log(`The number ${num} is positive and even.`);
} else if (num % 2 === 0 && num < 0) {
  console.log(`The number ${num} is negative and even.`);
} else if (num % 2 !== 0 && num > 0) {
  console.log(`The number ${num} is positive and odd.`);
} else if (num % 2 !== 0 && num < 0) {
  console.log(`The number ${num} is negative and odd.`);
} else {
  console.log(`The number is zero.`);
}
