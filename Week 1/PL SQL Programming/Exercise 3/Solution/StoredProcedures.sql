SET SERVEROUTPUT ON;

-- SCENARIO 1

CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest
AS
BEGIN
    UPDATE Accounts
    SET Balance = Balance + (Balance * 0.01)
    WHERE AccountType = 'Savings';

    DBMS_OUTPUT.PUT_LINE('Monthly interest processed successfully.');

    COMMIT;
END;
/

BEGIN
    ProcessMonthlyInterest;
END;
/

-- SCENARIO 2

CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
    p_department VARCHAR2,
    p_bonus NUMBER
)
AS
BEGIN
    UPDATE Employees
    SET Salary = Salary + (Salary * p_bonus / 100)
    WHERE Department = p_department;

    DBMS_OUTPUT.PUT_LINE(
        'Bonus updated for department: '
        || p_department
    );

    COMMIT;
END;
/

BEGIN
    UpdateEmployeeBonus('IT',10);
END;
/

-- SCENARIO 3

CREATE OR REPLACE PROCEDURE TransferFunds(
    p_from NUMBER,
    p_to NUMBER,
    p_amount NUMBER
)
AS
    v_balance NUMBER;
BEGIN

    SELECT Balance
    INTO v_balance
    FROM Accounts
    WHERE AccountID = p_from;

    IF v_balance >= p_amount THEN

        UPDATE Accounts
        SET Balance = Balance - p_amount
        WHERE AccountID = p_from;

        UPDATE Accounts
        SET Balance = Balance + p_amount
        WHERE AccountID = p_to;

        DBMS_OUTPUT.PUT_LINE('Transfer Successful.');

        COMMIT;

    ELSE

        DBMS_OUTPUT.PUT_LINE('Insufficient Balance.');

    END IF;

END;
/

BEGIN
    TransferFunds(201,202,2000);
END;
/