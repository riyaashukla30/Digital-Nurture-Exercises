1  SET SERVEROUTPUT ON;

-- =====================================
-- SCENARIO 1: Age > 60 → Interest discount
-- =====================================
BEGIN
  FOR c IN (SELECT customer_id, age FROM customer) LOOP

    IF c.age > 60 THEN
      UPDATE loan
      SET interest_rate = interest_rate - 1
      WHERE customer_id = c.customer_id;

      DBMS_OUTPUT.PUT_LINE(
        'Interest updated for Customer ID: ' || c.customer_id
      );
    END IF;

  END LOOP;

  COMMIT;
END;
/

-- =====================================
-- SCENARIO 2: Balance > 10000 → VIP
-- =====================================
BEGIN
  FOR c IN (SELECT customer_id, balance FROM customer) LOOP

    IF c.balance > 10000 THEN
      UPDATE customer
      SET isvip = 'TRUE'
      WHERE customer_id = c.customer_id;

      DBMS_OUTPUT.PUT_LINE(
        'VIP assigned to Customer ID: ' || c.customer_id
      );
    END IF;

  END LOOP;

  COMMIT;
END;
/

-- =====================================
-- SCENARIO 3: Loans due in 30 days
-- =====================================
BEGIN
  FOR l IN (
    SELECT c.name, l.loan_id, l.due_date
    FROM loan l
    JOIN customer c ON l.customer_id = c.customer_id
    WHERE l.due_date <= SYSDATE + 30
  ) LOOP

    DBMS_OUTPUT.PUT_LINE(
      'Reminder: Loan ' || l.loan_id ||
      ' for ' || l.name ||
      ' due on ' || l.due_date
    );

  END LOOP;
END;
/
