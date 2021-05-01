const inquirer = require("inquirer");


inquirer
  .prompt([
    {
      type: "list",
      message: "What would you like to do?",
      name: "choice",
      choices: [
        "View All Employees?",
        "View All Employee's By Roles?",
        "View all Emplyees By Deparments",
        "Update Employee",
        "Add Employee?",
        "Add Role?",
        "Add Department?",
      ],
    },
  ]).then(function(answer){

    console.log(answer)
  })
