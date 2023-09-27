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
    ('Engineering Manager', 100000, 3);

-- Insert employees
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
    ('Eren', 'Yeager', 2, 6),
    ('Mikasa', 'Ackerman', 2, 6),
    ('Armin', 'Arlert', 2, 6),
    ('Levi', 'Ackerman', 3, NULL),
    ('Erwin', 'Smith', 4, NULL), 
    ('Hange', 'Zoe', 5, NULL),
    ('Reiner', 'Braun', 3, NULL),
    ('Gabi', 'Braun', 1, NULL); 
