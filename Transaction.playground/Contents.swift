//this class is supposed to simulate transactions on a fake bank account

class Account {
    
    var amount: Double
        
    func getAmount() -> Int {
        return Int(self.amount);
    }
    
    func transaction(price: Double, amount: Double) -> (Double, Double) {
        
        //gets the decimal and rounds it up to the nearest dollar
        let temp = price.truncatingRemainder(dividingBy: 1)
        let roundUp = 1 - temp
        
        let newAmount = amount - (roundUp + temp)
        return(roundUp, newAmount)
    }
}

let BankAccount = Account()
var PiggyBank = Account()


















