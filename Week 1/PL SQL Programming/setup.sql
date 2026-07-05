CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    Age NUMBER,
    Balance NUMBER,
    IsVIP VARCHAR2(5)
);

CREATE TABLE Loans (
    LoanID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    InterestRate NUMBER(5,2),
    DueDate DATE,
    FOREIGN KEY(CustomerID)
        REFERENCES Customers(CustomerID)
);

CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    AccountType VARCHAR2(20),
    Balance NUMBER,
    FOREIGN KEY(CustomerID)
        REFERENCES Customers(CustomerID)
);

CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Department VARCHAR2(30),
    Salary NUMBER
);

INSERT INTO Customers VALUES (1,'John',65,15000,'FALSE');
INSERT INTO Customers VALUES (2,'Alice',45,8000,'FALSE');
INSERT INTO Customers VALUES (3,'Bob',70,22000,'FALSE');
INSERT INTO Customers VALUES (4,'Emma',30,5000,'FALSE');

INSERT INTO Loans VALUES (101,1,8.5,SYSDATE+10);
INSERT INTO Loans VALUES (102,2,10,SYSDATE+60);
INSERT INTO Loans VALUES (103,3,9,SYSDATE+20);
INSERT INTO Loans VALUES (104,4,11,SYSDATE+90);

INSERT INTO Accounts VALUES (201,1,'Savings',15000);
INSERT INTO Accounts VALUES (202,2,'Savings',8000);
INSERT INTO Accounts VALUES (203,3,'Savings',22000);
INSERT INTO Accounts VALUES (204,4,'Current',5000);

INSERT INTO Employees VALUES (1,'David','IT',50000);
INSERT INTO Employees VALUES (2,'Sophia','IT',60000);
INSERT INTO Employees VALUES (3,'Mike','HR',45000);

COMMIT;