# Bank tech test - Makers week 10

## Specification

Requirements
- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

Acceptance criteria
- Given a client makes a deposit of 1000 on 10-01-2012
- And a deposit of 2000 on 13-01-2012
- And a withdrawal of 500 on 14-01-2012
- When she prints her bank statement
- Then she would see:
```
 date || credit || debit || balance  
 14/01/2012 || || 500.00 || 2500.00  
 13/01/2012 || 2000.00 ||  || 3000.00  
 10/01/2012 || 1000.00 ||  || 1000.00
```

## User stories

Before writing any code, I produced three user stories to describe the functionality required from the criteria as follows:

> As a bank customer  
> So I can keep my money safe  
> I can make deposits into my bank account  

> As a bank customer  
> So I can use my money  
> I can make withdrawals from my bank account

> As a bank customer  
> So I can keep track of my money  
> I can see my bank account activity with dates

## Tests
```
Account
  displays a starting balance of zero
  can credit the balance
  can debit the balance
date || credit || debit || balance
18/07/2018 || 0 || 500.00 || 250.00
18/07/2018 || 750.00 || 0 || 750.00
  adds credit to the statement ledger

Printer
date || credit || debit || balance
18/07/2018 || 1000 || 0 || 1000
  can print the statement

Statement
  adds transactions to the ledger

Finished in 0.00364 seconds (files took 0.39912 seconds to load)
6 examples, 0 failures


COVERAGE: 100.00% -- 67/67 lines in 6 files
```
## Running the code

1. Clone this repository
2. In terminal:
  - Install gems using `bundle install`
  - Open `irb`
  - Type `require './lib/account.rb'`
  - `account = Account.new`
  - `account.credit(100)`
  - `account.credit(750)`
  - `account.debit(500)`
  - `account.produce_statement`
  `18/07/2018 || 0 || 500.00 ||  350.00 
     18/07/2018 || 750.00 || 0 ||  850.00  
     18/07/2018 || 100.00 || 0 ||  100.00`
  
  
  

Below is a screenshot of the code running:

```
➜  bank_tech_test git:(master) ✗ irb
2.5.1 :001 > require './lib/account.rb'
 => true
2.5.1 :002 > account = Account.new
 => #<Account:0x00007f90afa08f88 @balance=0, @date="18/07/2018", @statement=#<Statement:0x00007f90afa08f60 @ledger=[]>, @printer=#<Printer:0x00007f90afa08f10>>
2.5.1 :003 > account.credit(100)
 => [{:date=>"18/07/2018", :credit=>"100.00", :debit=>0, :balance=>"100.00"}]
2.5.1 :004 > account.credit(750)
 => [{:date=>"18/07/2018", :credit=>"100.00", :debit=>0, :balance=>"100.00"}, {:date=>"18/07/2018", :credit=>"750.00", :debit=>0, :balance=>"850.00"}]
2.5.1 :005 > account.debit(500)
 => [{:date=>"18/07/2018", :credit=>"100.00", :debit=>0, :balance=>"100.00"}, {:date=>"18/07/2018", :credit=>"750.00", :debit=>0, :balance=>"850.00"}, {:date=>"18/07/2018", :credit=>0, :debit=>"500.00", :balance=>"350.00"}]
2.5.1 :006 > account.produce_statement
date || credit || debit || balance
18/07/2018 || 0 || 500.00 ||  350.00
18/07/2018 || 750.00 || 0 ||  850.00
18/07/2018 || 100.00 || 0 ||  100.00
 => [{:date=>"18/07/2018", :credit=>"100.00", :debit=>0, :balance=>"100.00"}, {:date=>"18/07/2018", :credit=>"750.00", :debit=>0, :balance=>"850.00"}, {:date=>"18/07/2018", :credit=>0, :debit=>"500.00", :balance=>"350.00"}]
2.5.1 :007 >

```

## Notes on code structure
- I began by creating basic balance functionality in the Account class, allowing the 'credit' and 'debit' methods to update the balance.
- I then created the Statement class, to keep track of transactions and added to the 'credit' and 'debit' methods to allow them to push input into the array ('ledger').
- The Printer class was produced last, in order to format the contents of the Statement to appear as required by the criteria.
- By having three separate classes, it should be able to make changes to one without requiring changes be made to the others.  
