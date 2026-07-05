SET SERVEROUTPUT ON;

-- SCENARIO 1

BEGIN
    FOR c IN (
        SELECT l.LoanID,
               c.CustomerName,
               c.Age,
               l.InterestRate
        FROM Customers c
        JOIN Loans l
        ON c.CustomerID = l.CustomerID
    )
    LOOP
        IF c.Age > 60 THEN
            UPDATE Loans
            SET InterestRate = InterestRate - 1
            WHERE LoanID = c.LoanID;

            DBMS_OUTPUT.PUT_LINE(
                'Discount applied to '
                || c.CustomerName
                || '. New Interest Rate = '
                || (c.InterestRate-1)
                || '%'
            );
        END IF;
    END LOOP;

    COMMIT;
END;
/

-- SCENARIO 2

BEGIN

    FOR c IN (
        SELECT CustomerID,
               CustomerName,
               Balance
        FROM Customers
    )
    LOOP

        IF c.Balance > 10000 THEN

            UPDATE Customers
            SET IsVIP='TRUE'
            WHERE CustomerID=c.CustomerID;

            DBMS_OUTPUT.PUT_LINE(
                c.CustomerName || ' promoted to VIP.'
            );

        END IF;

    END LOOP;

    COMMIT;

END;
/

-- SCENARIO 3

BEGIN

    FOR l IN (

        SELECT c.CustomerName,
               loanid,
               DueDate

        FROM Customers c
        JOIN Loans l

        ON c.CustomerID=l.CustomerID

        WHERE DueDate <= SYSDATE+30

    )

    LOOP

        DBMS_OUTPUT.PUT_LINE(

            'Reminder : Loan '
            || l.LoanID
            || ' for '
            || l.CustomerName
            || ' is due on '
            || TO_CHAR(l.DueDate,'DD-MON-YYYY')

        );

    END LOOP;

END;
/