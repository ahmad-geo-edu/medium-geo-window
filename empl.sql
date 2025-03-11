-- Create the table
CREATE TABLE employees (
    ID SERIAL PRIMARY KEY,
    ename TEXT NOT NULL,
    dept TEXT NOT NULL,
    salary INT
);

-- Insert the values
INSERT INTO employees (ename, dept, salary) VALUES
('Mohammad', 'IT', 19000),
('Sarah', 'ENG', 17000),
('Adam', 'ENG', 16000),
('John', 'IT', 17000),
('Khadija', 'HR', 13000),
('Matthew', 'HR', 14000),
('Aaron', 'ENG', 15000),
('Maria', 'IT', 18000),
('Joseph', 'HR', 13000),
('Eve', 'HR', 12000);