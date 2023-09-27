-- Insert departments
INSERT INTO department (name) VALUES
    ('Sales'),
    ('HR'),
    ('Engineering'),
    ('Marketing'),
    ('Legal');

-- Insert roles
INSERT INTO role (title, salary, department_id) VALUES
    ('HR Specialist', 70000, 2),
    ('Engineer', 80000, 3),
    ('Marketing Specialist', 80000, 4),
    ('Sales Representative', 100000, 1),
    ('Sales Representative2', 100000, 1),
    ('Sales Representative3', 100000, 1),
    ('Sales Representative4', 100000, 1),
    ('Engineering Manager', 100000, 3);

-- Insert employees
-- Insert employees (managers)
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
    ('Eren', 'Yeager', 1, NULL),
    ('Levi', 'Ackerman', 4, NULL),
    ('Erwin', 'Smith', 5, NULL);

-- Insert employees (reporting to managers)
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
    ('Mikasa', 'Ackerman', 2, 1),
    ('Armin', 'Arlert', 3, 1),
    ('Hange', 'Zoe', 6, 5),
    ('Jean', 'Kirstein', 7, 4);
