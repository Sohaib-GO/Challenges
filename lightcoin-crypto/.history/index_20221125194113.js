class Account {
  constructor(username) {
    this.username = username;
    // Have the account balance start at $0 since that makes more sense.
    this.balance = 0;
  }
}

class Transaction {
  constructor(amount, account) {
    this.amount = amount;
    this.account = account;
  }
}

class Deposit extends Transaction {
 
}

class Withdrawal extends Transaction {
  commit() {
    this.account.balance -= this.amount;
  }
}

// DRIVER CODE BELOW
// We use the code below to "drive" the application logic above and make sure it's working as expected

// Create two accounts
const myAccount = new Account("snow-patrol");

const t1 = new Deposit(120.0, myAccount);
t1.commit();
console.log(myAccount);
