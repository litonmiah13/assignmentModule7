create database XYZ_Corp;

//table structure for table 'employees'

create table employees (
    `id` UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` varchar(100) NOT NULL,
    `age` int(11) NOT NULL,
    `salary` varchar(255) NOT NULL,
    `department_id` int(11) NOT NULL
);

//insert data into 'employees' table

INSERT INTO `employees` (`id`, `name`, `age`, `salary`, `department_id`) VALUES
(1001, 'Adrian Leonard', '36', '34000', 7),
(1002, 'Haru Akiyama', '43', '58000', 9),
(1003, 'Light Yagami', '31', '65000', 6),
(1004, 'Yori Yagami', '37', '24000', 8),
(1005, 'Dr. Rugal', '25', '20000', 5),
(1006, 'Leo Cortez', '29', '45000', 3),
(1007, 'Ellis Castro', '35', '56000', 2);

//table structure for table 'departments'

create table departments (
    `id` UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` varchar(100) NOT NULL,
    `manager` varchar(100) NOT NULL
);

//insert data into 'departments' table

INSERT INTO `departments` (`id`, `name`, `manager`) VALUES
(7, 'Marketing', 'Adrian Leonard'),
(9, 'Finance', 'Haru Akiyama'),
(6, 'Loans', 'Light Yagami'),
(8, 'IT', 'Yori Yagami');


// show all the columns and rows from the employees table.
a. SELECT * FROM employees;
    
// show only the name and salary columns where the salary is greater than 50000.
B. SELECT name, salary FROM employees WHERE salary > 50000;
    
// show average salaray from the the employees table
c. SELECT AVG(salary) AS Average Salary FROM employees;
    
//  show recored Marketing department all employees.
d. SELECT COUNT(*) AS Marketing Employees FROM employees, department WHERE department.name = 'Marketing';
    
// update salary where id 1001 to 60000.
e. UPDATE employees SET salary = 60000 WHERE id BETWEEN 1001 TO 60000;
    
// delete all deletes rows from the employees table where the salary column is less than 30000.
f. DELETE FROM employees WHERE salary < 30000;
    

// show all recored of department table.
a. SELECT * FROM department;
    
//  show recored department only Finance.
b. SELECT name FROM department WHERE manager = 'Finance';
    
//  count recored department only employees.
c. SELECT count(*) AS total_employees_department FROM employees GROUP BY department;
    
//  add recored of table.
d. INSERT INTO department ('name', `manager`) values ('John Doe', 'Research');