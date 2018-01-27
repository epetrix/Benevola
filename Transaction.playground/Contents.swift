//this class is supposed to simulate transactions on a fake bank account

class Transaction {
    
    struct Account {
        var amount: Double
    
        func transaction(price: Double, amount: Double) -> (Double, Double) {
            
            //gets the decimal and rounds it up to the nearest dollar
            let temp = price.truncatingRemainder(dividingBy: 1)
            let roundUp = 1 - temp
            
            let newAmount = amount - (roundUp + temp)
            return(roundUp, newAmount)
        }
    }
    
    var BankAccount = Account(amount: 5000.00)
    var PiggyBank = Account(amount: 0)
    
}

    





        