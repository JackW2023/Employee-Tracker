// I am importing mysql2 from the npm package and assigned it to the constant of mysql
// This package provides functionalities to work with MySQL databases in Node.js
const mysql = require("mysql2");

// I am assigning mysql.createConnection() to the constant connect
// The mysql.createConnection() function is a method in 'mysql2' package 
    // it create a new connection to MySQL Database(db)
// host: is where my MySQL server is running. I'm setting it to localhost
// localhost: setting the host to localhost means the server is running on the same machine as Node.js application
// username: the username to log into the MySQL server
// password: the password associated with the username
// database: The name of the db
// The console log will log if the application has connected to the employees_db database
const connection = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: 'password',
        database: 'employees_db'
    },
    console.log("Successfully connect to the employees_db")
);

// I am the 'connection' object so that it can be imported and used in other parts of your application 
// this will allow me to use the same database `connection` across multiple files or modules without having to establish a new connection each time.
module.exports = connection;