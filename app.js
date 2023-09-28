require('dotenv').config();
const inquirer = require('inquirer');
const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: process.env.DB_PASSWORD,
    database: 'staffing_db'
});

connection.connect((err) => {
    if (err) throw err;
    console.log('Connected to the employee_db database.');
    // Start the application
    startPrompt();
});

function startPrompt() {
    inquirer
        .prompt({
            type: 'list',
            name: 'choice',
            message: 'What would you like to do?',
            choices: [
                'View all departments',
                'View all roles',
                'View all employees',
            ],
        })
        .then((answer) => {
            switch (answer.choice) {
                case 'View all departments':
                    viewDepartments();
                    break;
                case 'View all roles':
                    viewRoles();
                    break;
                case 'View all employees':
                    viewEmployees();
                    break;
            }
        });
}

function viewDepartments() {
    connection.query('SELECT * FROM department', (err, res) => {
        if (err) throw err;
        console.table(res);
        startPrompt();
    });
}

function viewRoles() {
    connection.query('SELECT role.id, role.title, role.salary and departnment.name AS department FROM department ON role.department_id = department.id',
        (err, results) => {
            if (err) throw err;
            console.table(results);
            startPrompt();
        }
    )
}

function viewEmployees() {
    connection.query(
        'SELECT employee.id, employee.first_name, employee.last_name, role.title, department.name AS department, role.salary FROM employee JOIN role ON employee.role_id = role.id JOIN department ON role.department_id = department.id',
        (err, results) => {
            if (err) throw err;
            console.table(results);
            startPrompt();
        }
    );
}