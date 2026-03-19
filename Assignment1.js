const sureshMass = 78; // in kg
const sureshHeight = 1.69; // in meters

const rameshMass = 92; // in kg
const rameshHeight = 1.95; // in meters

// 2. Calculate both their BMIs using the formula
const sureshBMI = sureshMass / (sureshHeight * sureshHeight);
const rameshBMI = rameshMass / (rameshHeight * rameshHeight);

console.log("Suresh's BMI:", sureshBMI.toFixed(2));
console.log("Ramesh's BMI:", rameshBMI.toFixed(2));

// 3. Boolean variable - true if Suresh has higher BMI than Ramesh
const markHigherBMI = sureshBMI > rameshBMI;

console.log("Does Suresh have a higher BMI than Ramesh?", markHigherBMI);
