// I am importing mysql2 from the npm package and assigned it to the constant of mysql
// This package provides functionalities to work with MySQL databases in Node.js
const mysql = require("mysql2");

// I am assigning mysql.createConnection() to the constant connect
// The mysql.createConnection() function is a method in 'mysql2' package 
    // it create a new connection to MySQL Database(db)
// host: is where my MySQL server is running. I'm setting it to localhost
// localhost: setting the host to localhost means the server is running on the same machine as Node.js application
const connection = mysql.createConnection({

})
