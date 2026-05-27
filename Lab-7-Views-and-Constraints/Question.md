# Lab 7 - Views and Constraints

## Tasks

1. Create a table, CITIZEN(CITIZEN_ID, CITIZEN_NAME, CITIZEN_HOME, AGE, OCCUPATION, GENDER, SALARY). The CITIZEN_ID should increment automatically starting from 1. CITIZEN_NAME field should not be NULL. Also, check whether their age is at least 18 and gender is either Male or Female.

2. Try inserting some incorrect records in CITIZEN and check whether or not it's discarding those values. Include the error messages in your submitted text file.

3. Run the codes from Lab6.txt

4. Create a table, CUSTOMERS(CUSTOMER_ID, CUSTOMER_NAME, CITIZEN_ID, AGE, OCCUPATION). The CUSTOMER_ID should increment automatically starting from 1001.

5. Insert records in CUSTOMERS for each of the citizens.

6. Create a view STUDENT_CUSTOMER with all the student customers.

7. Create a view MALE_CUSTOMER with all the male customers. (The view should only have the customer IDs, names, citizen IDs, age and occupation)

8. Which product(s) did the students order?

9. Which product(s) did the male citizens order?

10. How many products did customer belonging to each occupation buy? Store this result in a view.

11. How many items of each of the products were purchased?

12. (Bonus) What is the most popular product?
