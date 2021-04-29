const express = require('express');
const mysql = require('mysql');
const inquirer = require('inquirer');

// Import the connection object
const sequelize = require('./connection.js');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Connect to the database before starting the Express.js server
sequelize.sync().then(() => {
  app.listen(PORT, () => console.log('Now listening'));
});


