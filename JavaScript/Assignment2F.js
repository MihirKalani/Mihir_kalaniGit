const students = [
  { name: "Mihir", marks: [80, 75, 90] },
  { name: "Rahul", marks: [50, 60, 45] },
  { name: "Amit", marks: [30, 40, 35] },
];

const result = students.map((student) => {
  let total = student.marks.reduce((sum, m) => sum + m, 0);
  let avg = total / student.marks.length;

  let grade = "";
  if (avg >= 75) grade = "Distinction";
  else if (avg >= 50) grade = "Pass";
  else grade = "Fail";

  return {
    ...student,
    average: avg,
    result: grade,
  };
});

console.log(result);

function cartAnalyzer(...items) {
  let totalAmount = 0;
  let totalQuantity = 0;

  items.forEach((item) => {
    totalAmount += item.price * item.quantity;
    totalQuantity += item.quantity;
  });

  return {
    totalAmount,
    totalQuantity,
  };
}

const output = cartAnalyzer(
  { name: "Shirt", price: 500, quantity: 2 },
  { name: "Shoes", price: 1500, quantity: 1 },
);

console.log(output);

const user = {
  name: "Mihir",
  city: "Surat",
};

function updateUser(userObj, newCity, profession) {
  return {
    ...userObj,
    city: newCity,
    profession: profession,
  };
}

const updatedUser = updateUser(user, "Mumbai", "Developer");

console.log(updatedUser);
console.log(user); // original remains unchanged

const products = [
  { name: "Phone", price: 20000 },
  { name: "Mouse", price: 500 },
  { name: "Laptop", price: 60000 },
];

const updatedProducts = products
  .filter((p) => p.price > 1000)
  .map((p) => ({
    ...p,
    discountedPrice: p.price * 0.9,
  }));

console.log(updatedProducts);

let nums = [1, 2, 3, 4, 5, 6];

let even = [],
  odd = [],
  es = 0,
  os = 0;

nums.forEach((n) => {
  if (n % 2 === 0) {
    even.push(n);
    es += n;
  } else {
    odd.push(n);
    os += n;
  }
});

console.log(even, odd, es, os);
