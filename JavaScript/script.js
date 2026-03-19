// let javaISfun = true;
// console.log(typeof javaISfun);
// console.log("Hello World");

// //oparator
// let x = 10;
// let y = 5;
// console.log(x + y);
// console.log(x - y);
// console.log(x * y);
// console.log(x / y);
// console.log(x % y);

// //  ** meaning is power
// console.log(x ** y);

// //comparison operator
// console.log(x > y);
// console.log(x < y);
// console.log(x >= y);
// console.log(x <= y);
// console.log(x == y);
// console.log(x != y);

// let ageSuresh = 2026 - 1990;
// console.log(ageSuresh);
// let ageRamesh = 2026 - 1995;
// console.log(ageRamesh);
// let ageDifference = ageSuresh - ageRamesh;
// console.log(ageDifference);

// console.log(ageSuresh * 2 + " is the age of Suresh");

// let x1 = 10 + 5;
// x += 10; // x = x + 10
// console.log(x1);

// console.log(x);

// let current = new Date().getFullYear();
// console.log("Current year: " + current);

// let ageSuresh = current - 1990;
// let ageRamesh = current - 1995;

// console.log(ageSuresh > ageRamesh);

// Second Session

//17-03
//string literals ${year-birthYear}
//in literals we use backticks `` instead of double or single quotes and neglect use of + operator for concatenation and use ${} to insert variables or expressions in the string
// const firstname = 'suresh'
// const year = 2026
// const birthYear = 1990
// const job ="professional"
// console.log("I'am "+firstname+" and I am "+(year-birthYear)+" years old.")
// console.log(`I'am ${firstname} and I am ${year-birthYear} years old and I am a ${job}.`)

// //if else statement
// const age = 2
// if(age >= 18){
//     console.log("You are eligible to vote.")
// } else {
//     console.log(`You are not eligible to vote. You need to wait for ${18-age} years.`)
// }

// //type conversion
// const inputYear = 2010
// console.log(inputYear)
// console.log(String(inputYear))
// console.log(typeof NaN)

//typr coercion
// console.log("9" - "5");
// console.log("19" - "13" + "17");
// console.log("19" - "13" + 17);
// console.log("123" < 57);
// console.log(96 > "18");
// console.log(5 + 6 + "4" + 3 + NaN + 10);

//falsy values in JavaScript
// console.log(Boolean(0));
// console.log(Boolean(undefined));
// console.log(Boolean(null));
// console.log(Boolean(NaN));
// console.log(Boolean(""));
// console.log(Boolean("Hello"));
// console.log(Boolean({}));

// const money = 100;
// if (money >= 500) {
//   console.log("Don't spend it all");
// } else if (money < 100 && money >= 400) {
//   console.log("You have some money, but not much.");
// } else if (money > 0 && money <= 100) {
//   console.log("start saving money");
// } else {
//   console.log("Invalid amount of money");
// }

// session 18/3

// ternoary operator
// const age = 20;
// age >= 18
//   ? console.log("You are eligible to vote.") // ? is used for if statement
//   : console.log("You are not eligible to vote."); // : is used for else statement

// // logical operators
// // && (AND), || (OR), ! (NOT)
// const hasDriversLicense = true; // A
// const hasGoodVision = true; // B
// console.log(hasDriversLicense && hasGoodVision); // true
// console.log(hasDriversLicense || hasGoodVision); // true
// console.log(!hasDriversLicense); // false

// if (hasDriversLicense && hasGoodVision) {
//   console.log("You can drive!");
// } else {
//   console.log("You cannot drive!");
// }

// functions
// function logger() {
//   console.log("My name is Mihir");
// }
// logger();

// function name(name = "Guest", lastname) {
//   console.log("My name is " + name + lastname);
// }
// name("Mihir");
// name("Suresh");
// name("Ramesh", "Patel");
// name(); // default parameter value is used when no argument is passed to the function
// name("Mihir", "Kalani");

// storing function in variable

//logical operator
// const hasDriverLicense = true
// const hasGoodVision = true
// console.log(hasDriverLicense && hasGoodVision)
// console.log(hasDriverLicense || hasGoodVision)
// console.log(!hasDriverLicense)

// if(hasDriverLicense && hasGoodVision){
//     console.log('I can drive')
// } else {
//     console.log('I cannot drive')
// }

// //function
// function greetings(name="stranger", lastName){ //default parameter
//     console.log('Hello '+ name + ' ' + lastName)
//     return name;
// }

// greetings('dhrumil')
// greetings("meet")
// greetings("mihir","kalani")
// greetings()

// let x = greetings()
// console.log(x)

// let Null = 'wegwe'
// let y=  Null
// let a = null

// console.log(typeof y)
// console.log(typeof a)

// //storing functions in variables
// const calcAge = function(birthYear){
//     return 2026 - birthYear
// }
// console.log(calcAge(1990))

// Session Function called another function

function CalaculateaTax(amount) {
  return amount * 0.18;
}
function CalaculateaTax(amount) {
  let tax = CalaculateaTax(amaount); // calling another function

  let total = amount + tax;
  return total;
}

let finalamount = CalaculateaTax(100);

//19-03
//function calling another function
function calcTax(amount) {
  return amount * 0.18;
}

function calcTotal(amount) {
  let tax = calcTax(amount);
  let total = amount + tax;
  return total;
}

let finalAmount = calcTotal(100);
console.log(finalAmount);

//arrow function: when you want to skip return and {}
const add = (a, b) => a + b;

const greetings = (name) => {
  console.log(`Hello 
        ${name}`);
};
//arrow function doesnt work with 'this'

greetings("jethalal !!!!");

// const person={
//     name:"dhrumil",
//     age:21,
//     greet: function(){
//         console.log(this.age
//         )
//     }
// }
// person.greet()

// const person={
//     name:"dhrumil",
//     age:21,
//     greet: ()=>{
//         console.log(this.age//this keyword doesnt work with arrow function
//         )
//     }
// }
// person.greet()

//array

// const person = ['Dhrumil',21,'Pune',390019]

// console.log(person.length)
// console.log(person[0])
// person.push('India')
// person.pop()
// console.log(person)
// person.splice(0,0,"virat")
// console.log(person)
// for(let i=1;i<=5;i++){
//     console.log(i)

// }
let i = 1;
while (i <= 5) {
  console.log(i);
  i++;
}

const person = {
  firstname: "dhrumil",
  lastname: "parmar",
  hobbies: ["sports", "coding"],
};

console.log(person);
console.log(person.firstname);
console.log(person.lastname);
console.log(person.hobbies[0]);
