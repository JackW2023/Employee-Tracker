-- The `DROP DATABASE IF EXISTS` is MySQL language
    -- It will delete the db which I name "employees_db" if it already exist
    -- This service as formatting the document so I could start fresh
DROP DATABASE IF EXISTS employees_db; 

-- The `CREATE DATABASE` is MySQL language
    -- It will create the named db in this case employee_db
CREATE DATABASE employees_db;

-- The `CREATE TABLE` is MsSQL Language
    -- It will create the named db in this case is `department`
        -- The `id` is the name of the column
        -- The `INT` is the datatype of the column 
            -- `INT` = integer value
        -- The `AUTO_INCREMENT` is an attribute for MySQL 
            -- Increase the column value by 1 when new record is inserted
        -- The `PRIMARY KEY` constraint specifies that the id column is the primary identifier for records in the table
            -- Every value in this column must be unique, and no part of a primary key can be null
    -- The result of this is each row gets a unique and automatic identifier
CREATE TABLE department(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL
);

-- I am creating a table name role
    -- I declare an unique identifier
        -- it will be integer
        -- it will auto increment 
        -- it has a primary key
    -- I declare the title of the role
        -- it has 30 characters
        -- It is unique
        -- it is not null
    -- I declare another column `salary`
        -- it will be decimals
        -- it will not be null
    -- I declare an integer
        -- it will reference the department 
        -- it will not be null
    -- The `FOREIGN KEY` serves as a bridge
        -- establishes a relationship between the department_id in the role table and the id in the department table
        -- `ON DELETE CASCADE`
            -- if a department is deleted, all roles associated with that department will also be deleted
CREATE TABLE role(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) UNIQUE NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE CASCADE
);