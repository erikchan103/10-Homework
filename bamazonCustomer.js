var mysql = require("mysql");
var inquirer = require('inquirer');

var connection = mysql.createConnection({
  host: "localhost",
  port: "8889",
  user: "root",
  password: "root",
  database: "bamazon"
});

connection.connect(function (err) {
  if (err) throw err;
  connection.query("SELECT * FROM products", function (err, result, fields) {
    if (err) throw err;
    for (var i = 0; i < result.length; i++) {
      console.log(result[i].item_id + " | " + result[i].product_name + " | $" + result[i].price);
    }
    inquirer
      .prompt([
        {
          type: "input",
          message: "What is the id number of the product you like to purchase?",
          name: "idNum"
        },
        {
          type: "input",
          message: "How much do you want?",
          name: "quantity"
        }
      ]).then(function (response) {
        if (parseInt(response.quantity) > parseInt(result[response.idNum - 1].stock_quantity)) {
          console.log('Insufficient stock to meet your order');
          connection.end();
        }
        else {
          var sql = "UPDATE `products` SET `stock_quantity` = " + (result[response.idNum - 1].stock_quantity - response.quantity) + " WHERE `item_id` = " + response.idNum;
          console.log(sql);
          let data = [false, 1];
          connection.query(sql, data, (error, results, fields) => {
            if (error) {
              return console.error(error.message);
            }
            console.log("Your total will be $" + (response.quantity * result[response.idNum - 1].price));
          });
          connection.end();
        }
      })
  });
});
