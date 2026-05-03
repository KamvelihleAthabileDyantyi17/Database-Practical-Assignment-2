
-- Practical Assignment 2: SQL Database Creation
CREATE TABLE CUSTOMER (
    CUSTOMER_ID NUMBER PRIMARY KEY,
    FIRST_NAME VARCHAR2(50),
    SURNAME VARCHAR2(50),
    ADDRESS VARCHAR2(100),
    CONTACT_NUMBER VARCHAR2(15),
    EMAIL VARCHAR2(50)
);

CREATE TABLE EMPLOYEE (
    EMPLOYEE_ID VARCHAR2(10) PRIMARY KEY,
    FIRST_NAME VARCHAR2(50),
    SURNAME VARCHAR2(50),
    CONTACT_NUMBER VARCHAR2(15),
    ADDRESS VARCHAR2(100),
    EMAIL VARCHAR2(50)
);

CREATE TABLE DONATOR (
    DONATOR_ID NUMBER PRIMARY KEY,
    FIRST_NAME VARCHAR2(50),
    SURNAME VARCHAR2(50),
    CONTACT_NUMBER VARCHAR2(15),
    EMAIL VARCHAR2(50)
);

CREATE TABLE DONATION (
    DONATION_ID NUMBER PRIMARY KEY,
    DONATOR_ID NUMBER,
    DONATION VARCHAR2(100),
    PRICE NUMBER(10, 2),
    DONATION_DATE DATE
);

CREATE TABLE DELIVERY (
    DELIVERY_ID NUMBER PRIMARY KEY,
    DELIVERY_NOTES VARCHAR2(100),
    DISPATCH_DATE DATE,
    DELIVERY_DATE DATE
);

CREATE TABLE RETURNS (
    RETURN_ID VARCHAR2(10) PRIMARY KEY,
    RETURN_DATE DATE,
    REASON VARCHAR2(100),
    CUSTOMER_ID NUMBER,
    DONATION_ID NUMBER,
    EMPLOYEE_ID VARCHAR2(10)
);

CREATE TABLE INVOICE (
    INVOICE_NUM NUMBER PRIMARY KEY,
    CUSTOMER_ID NUMBER,
    INVOICE_DATE DATE,
    EMPLOYEE_ID VARCHAR2(10),
    DONATION_ID NUMBER,
    DELIVERY_ID NUMBER
);

-- CUSTOMER Data
INSERT INTO CUSTOMER VALUES (11011, 'Jack', 'Smith', '18 Water Rd', '0877277521', 'jsmith@isat.com');
INSERT INTO CUSTOMER VALUES (11012, 'Pat', 'Hendricks', '22 Water Rd', '0863257857', 'ph@mcom.co.za');
INSERT INTO CUSTOMER VALUES (11013, 'Andre', 'Clark', '101 Summer Lane', '0834567891', 'aclark@mcom.co.za');
INSERT INTO CUSTOMER VALUES (11014, 'Kevin', 'Jones', '55 Mountain way', '0612547895', 'kj@isat.co.za');
INSERT INTO CUSTOMER VALUES (11015, 'Lucy', 'Williams', '5 Main rd', '0827238521', 'lw@mcal.co.za');

-- EMPLOYEE Data
INSERT INTO EMPLOYEE VALUES ('emp101', 'Jeff', 'Davis', '0877277521', '10 main road', 'jand@isat.com');
INSERT INTO EMPLOYEE VALUES ('emp102', 'Kevin', 'Marks', '0837377522', '18 water road', 'km@isat.com');
INSERT INTO EMPLOYEE VALUES ('emp103', 'Adanya', 'Andrews', '0817117523', '21 circle lane', 'aa@isat.com');
INSERT INTO EMPLOYEE VALUES ('emp104', 'Adebayo', 'Dryer', '0797215244', '1 sea road', 'aryer@isat.com');
INSERT INTO EMPLOYEE VALUES ('emp105', 'Xolani', 'Samson', '0827122255', '12 main road', 'xosam@isat.com');

-- DONATOR Data
INSERT INTO DONATOR VALUES (20111, 'Jeff', 'Watson', '0827172250', 'jwatson@ymail.com');
INSERT INTO DONATOR VALUES (20112, 'Stephen', 'Jones', '0837865670', 'joness@ymail.com');
INSERT INTO DONATOR VALUES (20113, 'James', 'Joe', '0878978650', 'jj@isat.com');
INSERT INTO DONATOR VALUES (20114, 'Kelly', 'Ross', '0826575650', 'kross@gsat.com');
INSERT INTO DONATOR VALUES (20115, 'Abraham', 'Clark', '0797656430', 'aclark@ymail.com');

-- DONATION Data
INSERT INTO DONATION VALUES (7111, 20111, 'KIC Fridge', 599, TO_DATE('1 May 2024', 'DD MON YYYY'));
INSERT INTO DONATION VALUES (7112, 20112, 'Samsung 42inch LCD', 1299, TO_DATE('3 May 2024', 'DD MON YYYY'));
INSERT INTO DONATION VALUES (7113, 20113, 'Sharp Microwave', 1599, TO_DATE('3 May 2024', 'DD MON YYYY'));
INSERT INTO DONATION VALUES (7114, 20115, '6 Seat Dining room table', 799, TO_DATE('5 May 2024', 'DD MON YYYY'));
INSERT INTO DONATION VALUES (7115, 20114, 'Lazyboy Sofa', 1199, TO_DATE('7 May 2024', 'DD MON YYYY'));
INSERT INTO DONATION VALUES (7116, 20113, 'JVC Surround Sound System', 179, TO_DATE('9 May 2024', 'DD MON YYYY'));

-- DELIVERY Data
INSERT INTO DELIVERY VALUES (511, 'Double packaging requested', TO_DATE('10 May 2024', 'DD MON YYYY'), TO_DATE('15 May 2024', 'DD MON YYYY'));
INSERT INTO DELIVERY VALUES (512, 'Delivery to work address', TO_DATE('12 May 2024', 'DD MON YYYY'), TO_DATE('15 May 2024', 'DD MON YYYY'));
INSERT INTO DELIVERY VALUES (513, 'Signature required', TO_DATE('12 May 2024', 'DD MON YYYY'), TO_DATE('17 May 2024', 'DD MON YYYY'));
INSERT INTO DELIVERY VALUES (514, 'No notes', TO_DATE('12 May 2024', 'DD MON YYYY'), TO_DATE('15 May 2024', 'DD MON YYYY'));
INSERT INTO DELIVERY VALUES (515, 'Birthday present wrapping required', TO_DATE('18 May 2024', 'DD MON YYYY'), TO_DATE('19 May 2024', 'DD MON YYYY'));
INSERT INTO DELIVERY VALUES (516, 'Delivery to work address', TO_DATE('20 May 2024', 'DD MON YYYY'), TO_DATE('25 May 2024', 'DD MON YYYY'));

-- RETURNS Data
INSERT INTO RETURNS VALUES ('ret001', TO_DATE('25 May 2024', 'DD MON YYYY'), 'Customer not satisfied with product', 11011, 7116, 'emp101');
INSERT INTO RETURNS VALUES ('ret002', TO_DATE('25 May 2024', 'DD MON YYYY'), 'Product had broken section', 11013, 7114, 'emp103');

-- INVOICE Data
INSERT INTO INVOICE VALUES (8111, 11011, TO_DATE('15 May 2024', 'DD MON YYYY'), 'emp103', 7111, 511);
INSERT INTO INVOICE VALUES (8112, 11013, TO_DATE('15 May 2024', 'DD MON YYYY'), 'emp101', 7114, 512);
INSERT INTO INVOICE VALUES (8113, 11012, TO_DATE('17 May 2024', 'DD MON YYYY'), 'emp101', 7112, 513);
INSERT INTO INVOICE VALUES (8114, 11015, TO_DATE('17 May 2024', 'DD MON YYYY'), 'emp102', 7113, 514);
INSERT INTO INVOICE VALUES (8115, 11011, TO_DATE('17 May 2024', 'DD MON YYYY'), 'emp102', 7115, 515);
INSERT INTO INVOICE VALUES (8116, 11015, TO_DATE('18 May 2024', 'DD MON YYYY'), 'emp103', 7116, 516);

-- Save the transactions
COMMIT;

-- Questions 2
SELECT 
    c.FIRST_NAME || ' ' || c.SURNAME AS "Customer Name",
    i.INVOICE_DATE AS "Invoice Date",
    i.EMPLOYEE_ID AS "Employee ID",
    del.DELIVERY_NOTES AS "Delivery Notes",
    don.DONATION AS "Donation Purchased",
    i.INVOICE_NUM AS "Invoice Num"
FROM 
    INVOICE i
JOIN 
    CUSTOMER c ON i.CUSTOMER_ID = c.CUSTOMER_ID
JOIN 
    DELIVERY del ON i.DELIVERY_ID = del.DELIVERY_ID
JOIN 
    DONATION don ON i.DONATION_ID = don.DONATION_ID
WHERE 
    i.INVOICE_DATE < TO_DATE('18 May 2024', 'DD MON YYYY');

-- Question 3
--Create Table for Funding
CREATE TABLE FUNDING (
    funding_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    funder VARCHAR2(100),
    funding_amount NUMBER(10, 2)
);

--Experiment with the Funding table
INSERT INTO FUNDING (funder, funding_amount) 
VALUES ('National Endowment', 25000.50);

-- Save the change
COMMIT;

--To view table data
SELECT * FROM FUNDING;

--Question 4
-- Enable server output to display results
SET SERVEROUTPUT ON;

BEGIN
    FOR rec IN (
        SELECT 
            c.FIRST_NAME, 
            c.SURNAME, 
            d.DONATION, 
            d.PRICE, 
            r.REASON
        FROM CUSTOMER c
        JOIN RETURNS r ON c.CUSTOMER_ID = r.CUSTOMER_ID
        JOIN DONATION d ON r.DONATION_ID = d.DONATION_ID
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('CUSTOMER:           ' || rec.FIRST_NAME || ', ' || rec.SURNAME);
        DBMS_OUTPUT.PUT_LINE('DONATION PURCHASED: ' || rec.DONATION);
        DBMS_OUTPUT.PUT_LINE('PRICE:              ' || rec.PRICE);
        DBMS_OUTPUT.PUT_LINE('RETURN REASON:      ' || rec.REASON);
        DBMS_OUTPUT.PUT_LINE('------------------------------------------');
    END LOOP;
END;
/

-- Question 5
SET SERVEROUTPUT ON;

DECLARE
    -- Variables to hold formatted names and date calculation
    v_cust_name VARCHAR2(100);
    v_emp_name  VARCHAR2(100);
    v_donation  DONATION.DONATION%TYPE;
    v_dispatch  DATE;
    v_delivery  DATE;
    v_days      NUMBER;
BEGIN
    -- Query to fetch data for customer 11013
    SELECT 
        SUBSTR(c.FIRST_NAME, 1, 1) || '.' || c.SURNAME,
        SUBSTR(e.FIRST_NAME, 1, 1) || '.' || e.SURNAME,
        don.DONATION,
        del.DISPATCH_DATE,
        del.DELIVERY_DATE,
        (del.DELIVERY_DATE - del.DISPATCH_DATE) -- Date subtraction gives number of days
    INTO 
        v_cust_name, v_emp_name, v_donation, v_dispatch, v_delivery, v_days
    FROM INVOICE i
    JOIN CUSTOMER c ON i.CUSTOMER_ID = c.CUSTOMER_ID
    JOIN EMPLOYEE e ON i.EMPLOYEE_ID = e.EMPLOYEE_ID
    JOIN DONATION don ON i.DONATION_ID = don.DONATION_ID
    JOIN DELIVERY del ON i.DELIVERY_ID = del.DELIVERY_ID
    WHERE c.CUSTOMER_ID = 11013;

    -- Output formatted as per Sample Output
    DBMS_OUTPUT.PUT_LINE('CUSTOMER:         ' || v_cust_name);
    DBMS_OUTPUT.PUT_LINE('EMPLOYEE:         ' || v_emp_name);
    DBMS_OUTPUT.PUT_LINE('DONATION:         ' || v_donation);
    DBMS_OUTPUT.PUT_LINE('DISPATCH DATE:    ' || TO_CHAR(v_dispatch, 'DD/MON/YY'));
    DBMS_OUTPUT.PUT_LINE('DELIVERY DATE:    ' || TO_CHAR(v_delivery, 'DD/MON/YY'));
    DBMS_OUTPUT.PUT_LINE('DAYS TO DELIVERY: ' || v_days);
    DBMS_OUTPUT.PUT_LINE('------------------------------------------');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No record found for Customer 11013.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Multiple records found for Customer 11013.');
END;
/

-- Question 6
SET SERVEROUTPUT ON;

BEGIN
    -- Loop through each customer's total spending
    FOR rec IN (
        SELECT 
            c.FIRST_NAME, 
            c.SURNAME, 
            SUM(d.PRICE) AS total_spent
        FROM CUSTOMER c
        JOIN INVOICE i ON c.CUSTOMER_ID = i.CUSTOMER_ID
        JOIN DONATION d ON i.DONATION_ID = d.DONATION_ID
        GROUP BY c.FIRST_NAME, c.SURNAME
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('FIRST NAME: ' || rec.FIRST_NAME);
        DBMS_OUTPUT.PUT_LINE('SURNAME:    ' || rec.SURNAME);
        
        -- Apply Star Rating Logic (Threshold: R 1 500)
        IF rec.total_spent >= 1500 THEN
            DBMS_OUTPUT.PUT_LINE('AMOUNT:     R ' || rec.total_spent || ' (*)');
        ELSE
            DBMS_OUTPUT.PUT_LINE('AMOUNT:     R ' || rec.total_spent);
        END IF;
        
        DBMS_OUTPUT.PUT_LINE('------------------------------------------');
    END LOOP;
END;
/

-- Question 7
--7.1
SET SERVEROUTPUT ON;

DECLARE
    -- Using %TYPE to anchor variables to the database schema
    v_donator_name DONATOR.FIRST_NAME%TYPE;
    v_donator_mail DONATOR.EMAIL%TYPE;
BEGIN
    -- Fetching details for a specific donator
    SELECT FIRST_NAME, EMAIL 
    INTO v_donator_name, v_donator_mail
    FROM DONATOR
    WHERE DONATOR_ID = 20111;

    DBMS_OUTPUT.PUT_LINE('Donator: ' || v_donator_name || ' | Email: ' || v_donator_mail);
END;
/
--7.2
DECLARE
    -- Declaring a record variable for the entire EMPLOYEE row
    v_emp_record EMPLOYEE%ROWTYPE;
BEGIN
    SELECT * INTO v_emp_record 
    FROM EMPLOYEE 
    WHERE EMPLOYEE_ID = 'emp105';

    -- Accessing fields using dot notation
    DBMS_OUTPUT.PUT_LINE('Staff Member: ' || v_emp_record.FIRST_NAME || ' ' || v_emp_record.SURNAME);
    DBMS_OUTPUT.PUT_LINE('Contact:      ' || v_emp_record.CONTACT_NUMBER);
END;
/
--7.3
DECLARE
    v_delivery_notes DELIVERY.DELIVERY_NOTES%TYPE;
BEGIN
    -- Attempting to find a delivery ID that does not exist (e.g., 999)
    SELECT DELIVERY_NOTES INTO v_delivery_notes
    FROM DELIVERY
    WHERE DELIVERY_ID = 999;

    DBMS_OUTPUT.PUT_LINE('Notes: ' || v_delivery_notes);

EXCEPTION
    -- Handling the system error when a query returns zero rows
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: The specified delivery record could not be found.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred.');
END;
/

--7.4
DECLARE
    v_price DONATION.PRICE%TYPE;
    -- 1. Declare the custom exception
    e_low_value_donation EXCEPTION;
BEGIN
    SELECT PRICE INTO v_price
    FROM DONATION
    WHERE DONATION_ID = 7116;

    -- 2. Raise the exception based on a business rule (Price < 200)
    IF v_price < 200 THEN
        RAISE e_low_value_donation;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Donation price is acceptable.');

EXCEPTION
    -- 3. Handle the custom exception
    WHEN e_low_value_donation THEN
        DBMS_OUTPUT.PUT_LINE('Alert: Donation 7116 flagged for manual review due to low price (R' || v_price || ').');
END;
/