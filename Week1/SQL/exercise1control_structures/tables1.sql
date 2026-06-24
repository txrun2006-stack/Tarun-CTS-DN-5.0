use BankDB;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    DOB DATE,
    Balance DECIMAL(10,2),
    LastModified DATE,
    IsVIP CHAR(1) DEFAULT 'N'
);

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2),
    LastModified DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(10),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Position VARCHAR(50),
    Salary DECIMAL(10,2),
    Department VARCHAR(50),
    HireDate DATE
);
INSERT INTO Customers
VALUES (1,'John Doe','1955-05-15',12000,CURDATE(),'N');

INSERT INTO Customers
VALUES (2,'Jane Smith','1990-07-20',1500,CURDATE(),'N');

INSERT INTO Accounts
VALUES (1,1,'Savings',1000,CURDATE());

INSERT INTO Accounts
VALUES (2,2,'Checking',1500,CURDATE());

INSERT INTO Transactions
VALUES (1,1,CURDATE(),200,'Deposit');

INSERT INTO Transactions
VALUES (2,2,CURDATE(),300,'Withdrawal');

INSERT INTO Loans
VALUES (1,1,5000,5,CURDATE(),DATE_ADD(CURDATE(),INTERVAL 20 DAY));

INSERT INTO Employees
VALUES (1,'Alice Johnson','Manager',70000,'HR','2015-06-15');

INSERT INTO Employees
VALUES (2,'Bob Brown','Developer',60000,'IT','2017-03-20');
