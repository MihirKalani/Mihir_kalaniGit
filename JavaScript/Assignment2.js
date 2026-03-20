const username = "mihir_kalani";
const password = "Mihir@123";

const inputUsername = "mihir_kalani";
const inputPassword = "Mihir@123";
if (inputUsername === username && inputPassword === password) {
  console.log("Login successful!");
} else if (inputUsername !== username || inputPassword === password) {
  console.log(" Something is not correct");
} else if (inputUsername == username || inputPassword !== password) {
  console.log("Something is not correct");
} else {
  console.log("Both incorrect");
}
