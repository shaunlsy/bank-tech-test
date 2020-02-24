# Bank Tech Test

## Overview

Makers Week 10 Individual Challenge

### Application Overview

- Ruby
- Interact with the code via a REPL like IRB

### Installation

- clone this repo
- run

```bash
> bundle install
> rspec # to check all tests pass
> irb -r ./lib/bank.rbrequire
```

- Example for acceptance criteria

```bash
> bank = Bank.new
> bank.deposit(1000, "10-01-2012")
> bank.deposit(2000, "13-01-2012")
> bank.withdraw(500, "14-01-2012")
> bank.print_statement
```

- Interact with the code with 'deposit', 'withdraw', 'print_bank_statement' methods.

![](/screenshot/1.png)

### User stories

```
As a user
So that I can deposit money into my account
I will like to add money and update my account statement
```

```
As a user
So that I can withdraw money from my account
I will like to reduce money and update my account statement
```

```
As a user
So that I can know the latest details of my bank account
I will like to see my account statement with date, amount and balance
```

```
As a user
So that I can see what I've done with my bank account over the past few days
I will like to see a bank statement with specific dates and its transactions
```

### Requirements

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
