DROP DATABASE IF EXISTS employee_tracker_db;
CREATE DATABASE employee_tracker_db;
USE employee_tracker_db;

CREATE TABLE department (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  INDEX (id)
);

CREATE TABLE role (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT,
  INDEX dep_ind (department_id),
  CONSTRAINT fk_department
  FOREIGN KEY (department_id)
    REFERENCES department(id)
);

CREATE TABLE employee (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30),
  role_id INT,
  INDEX role_ind (role_id),
  manager_id INT,
  INDEX man_ind (manager_id),
  CONSTRAINT fk_role
  FOREIGN KEY (role_id)
    REFERENCES role(id)
    ON DELETE CASCADE,
  CONSTRAINT fk_manager
  FOREIGN KEY (manager_id)
    REFERENCES employee(id)
    ON DELETE SET NULL
);