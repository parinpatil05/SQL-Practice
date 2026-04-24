/* ==========================================================
   SQL DATA DEFINITION LANGUAGE (DDL)
   ----------------------------------------------------------
   DDL commands are used to define and modify database 
   structure such as tables and constraints.

   Commands Covered:
   1. CREATE TABLE
   2. ALTER TABLE
   3. DROP TABLE

   Author: Parin Patil
   Learning Notes
   Inspired by SQL tutorials by Data With Baraa
========================================================== */


/* ==========================================================
   CREATE TABLE
   ----------------------------------------------------------
   Used to create a new table in the database.
========================================================== */

CREATE TABLE persons (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY (id)
);


/* ==========================================================
   ALTER TABLE
   ----------------------------------------------------------
   Used to modify an existing table structure.
========================================================== */

-- Add a new column to the table
ALTER TABLE persons
ADD email VARCHAR(50);

-- Remove an existing column
ALTER TABLE persons
DROP COLUMN phone;


/* ==========================================================
   DROP TABLE
   ----------------------------------------------------------
   Used to delete a table permanently from the database.
========================================================== */

DROP TABLE persons;
