/*1. Employee Salary Processor
• Filter employees with salary greater than 40,000
• Increase their salary by 10%
• Add a new property:
• "level":
o salary ≥ 70000 → "Senior"
o else → "Mid"
• Return a new array (do not modify original)
2. Order Management System
For each order:
1. Calculate total amount
2. Calculate total items quantity
3. Return new array:
4. Using the above assignments, turn into a single mini web app (UI + JS) 
*/

const employe = [
  { name: "Mihir", salary: 50000 },
  { name: "Meet", salary: 30000 },
  { name: "Yash", salary: 80000 },
  { name: "Henil", salary: 45000 },
];

function progress() {
  const updateEmp = employe
    .filter((emp) => emp.salary > 40000) // take that employee whose salary is greater than 40000
    .map((emp) => {
      let newSalary = (emp.salary * 1.1).toFixed(2); // here increase the salary 10%
      // tack tofix for 2 decimal point

      return {
        ...emp,
        salary: newSalary,
        level: newSalary >= 70000 ? "Senior" : "Mid", // add condition for level
      };
    });

  console.log(updateEmp);
  document.getElementById("result").innerHTML = JSON.stringify(updateEmp);
}
//2

const orders = [
  {
    id: 1,
    items: [
      { name: "Pan", price: 10, qty: 2 },
      { name: "Book", price: 50, qty: 1 },
    ],
  },
  {
    id: 2,
    items: [
      { name: "Paper", price: 500, qty: 1 },
      { name: "Dairy", price: 100, qty: 3 },
    ],
  },
];

function manageOrders() {
  const processedOrders = orders.map((order) => {
    let totalAmount = 0;
    let totalQty = 0;

    order.items.forEach((item) => {
      totalAmount = totalAmount + item.price * item.qty;
      totalQty = totalQty + item.qty;
    });

    return {
      id: order.id,
      totalAmount,
      totalQty,
    };
  });

  console.log(processedOrders);
  document.getElementById("orderResult").innerHTML =
    JSON.stringify(processedOrders);
}
