const username = "dhrumil_parmar";
const password = "MyN@me$!r0nm@n";

// const inputUsername = prompt("Enter your username:")
// const inputPassword = prompt("Enter your password:")
const inputUsername = "dhrumil_parmar";
const inputPassword = "MyN@me$!r0nm@n";
if (inputUsername === username && inputPassword === password) {
  console.log("Login successful!");
  // alert("Login successful !");
} else if (inputUsername !== username || inputPassword === password) {
  console.log(" Something is not correct");
  // alert("Something is not correct");
} else if (inputUsername == username || inputPassword !== password) {
  console.log("Something is not correct");
  // alert("Something is not correct");
} else {
  console.log("Both incorrect");
  // alert("Both incorrect");
}
