// Write a function to reverse a string without using built-in reverse().

function reverse(str) {
  let reversed = ""; // here take empty string
  for (let i = str.length - 1; i >= 0; i--) {
    reversed = reversed + str[i];
  }
  return reversed;
}
let String = "I am Mihir";
let reversString = reverse(String);
console.log(reversString);

//Flatten a nested array (e.g., [1,[2,[3]]] → [1,2,3]).

// Implement a debounce function in JavaScript.
function debounce(func, delay) {
  let timeoutId;
  return function (...args) {
    clearTimeout(timeoutId);
    timeoutId = setTimeout(() => {
      func.apply(this, args);
    }, delay);
  };
}

//Write an async function to fetch API data with error handling.

let url = "";

async function fetchData() {
  try {
    let response = await fetch(url);
    if (!response.ok) {
      throw new Error(" not good");
    }
    let data = await response.json();
    console.log(data);
  } catch (error) {
    console.error("error", error);
  }
}
fetchData();

//Write a function to check if a number is prime.
let number = 1;
function isPrime(num) {
  if (num <= 1) return false;
  for (let i = 2; i < num; i++) {
    if (num % i === 0) return false;
  }
  return true;
}
if (isPrime(number)) {
  console.log("prime number");
} else {
  console.log("not prime number");
}
