DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;
USE company_db;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);


CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30)NOT NULL,
    salary DECIMAL (10,2) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY(department_id) REFERENCES department (id)
   
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL, 
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL, 
    manager_id INT ,
    FOREIGN KEY (manager_id) REFERENCES employee(id),
    FOREIGN KEY(role_id) REFERENCES role(id)
);



INSERT INTO department (name) 
VALUES ("Sales"), ("Engineering"),("Legal"), ("Finance"),("Marketing");

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 60000 , 1),  
("Software Engineer", 75000, 2),
("Lawyer", 100000, 3),
("Accountant",70000, 4),
("Salesperson", 35000, 1),
("Lead Engineer", 90000, 2),
("Legal Team Lead", 100000, 3);

INSERT INTO employee  (first_name, last_name, role_id, manager_id)
VALUES ("Bob", "Bob", 1, null),
("Drake", "Nunes", 2, 1),
("Marc", "Antonio",3, 1),
("Eddy","Cintron",4, 1);