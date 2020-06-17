USE employee_tracker_db;

INSERT INTO department (name)
VALUES ("Sales"), ("Research & Development"), ("Manufacturing");

INSERT INTO role (title, salary, department_id)
VALUES ("sales_rep", 40000, 1), ("researcher", 50000, 2), ("robot_wrangler", 45000, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Bob", "Boberson", 1, NULL), ("Steve", "Stevenson", 1, 1), ("Jim", "Jameson", 2, NULL), ("Sven", "Svensen", 2, 3), ("Lori", "Svensdottir", 3, NULL), ("Mike", "Michaelson", 3, 5);