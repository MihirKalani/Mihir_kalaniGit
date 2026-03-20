
const name = "Mihir"
const age = 18
let purchaseAmount = 10000

let discount = 0;
if(age <= 18){
    purchaseAmount = purchaseAmount - purchaseAmount*0.1
    console.log(purchaseAmount)
    discount = 10
    console.log(discount)
    }

else if(age >= 60){
    purchaseAmount = purchaseAmount - purchaseAmount*0.2
    discount = 20

}
    
if(purchaseAmount >= 5000){
        purchaseAmount = purchaseAmount - purchaseAmount*0.05
        discount += 5
    }

console.log(`Hi ${name}! You received a total discount of ${discount}%. Final amount: ₹${purchaseAmount}`)
