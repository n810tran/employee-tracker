-- Insert departments
INSERT INTO department (name) VALUES
    ('Survey Corps'),
    ('Military Police'),
    ('Garrison Regiment'),
    ('Scouts');

-- Insert roles
INSERT INTO role (title, salary, department_id) VALUES
    ('Commander', 100000.00, 1),
    ('Captain', 80000.00, 2),
    ('Soldier', 60000.00, 3),
    ('Scout', 75000.00, 4),
    ('Engineer', 70000.00, 1),
    ('Medic', 65000.00, 2),
    ('Squad Leader', 75000.00, 3),
    ('Recon Expert', 85000.00, 4);

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
    ('Jean', 'Kirstein', 7, 4),
    ('Sasha', 'Blouse', 8, 3);
