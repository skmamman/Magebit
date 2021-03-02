# Magebit
Task 1 - HTML / CSS,  Task 2 - JavaScript,  Task 3 - PHP / MYSQL.

## Overview
This repository consists of 3 tasks. To run this, clone a repository first then follow the guidelines.

Task 1 - HTML / CSS.
In this task normal form is created to give a discount of 10% when the user is subscribed with an email.
Just click on index.html to view the webpage after the clone.

Task 2 -  JavaScript
In this, the javascript is used to check subscription email input validations and created a new page to show the success message after the successful validation.
Open the Task-2 directory and double click on index.html to view the working of Javascript.

Task 3 - PHP/MYSQL
Based on the previous task, PHP and MySQL is used to store the entered data into the database. The display.php web page is created to see the records in the database with some sorting and filtering operations.

### Installation and to run a PHP code into a local machine please use the following steps:
1. Clone the repository into your local machine.
2. Install XAMPP to run the localhost: please follow the guidelines for more details.
https://codeofaninja.com/2013/06/how-to-run-a-php-script.html
3. Copy the Task-3 directory into your "xampp\htdocs\".
4. Run apache and Mysql Server from the XAMPP  Control Panel.
5. Create database into the local database server, To open click here http://localhost/phpmyadmin/index.php with the name of "magebitdb" and create a table named "registration" with 3 columns names "id , email and date" "id" will be with PRIMARY KEY and auto-increment and "date will be assigned as default current_timestamp.
6. Finally in the last open http://localhost/Task-3/index.php to subscribe and open http://localhost/Task-3/display.php to see the entered records in the database. 


## Directory Structure

### Task-1

```
.
|-- icon/
|-- flex.css
|-- index.html
|-- mobile.css


```

### Task-2

```
.
|-- icon/
|-- flex.css
|-- index.html
|-- mobile.css
|-- script.js
|-- success.html

```

### Task-3

```
.
|-- icon/
|-- dbcon.php
|-- display.php
|-- flex.css
|-- index.php
|-- magebit.sql
|-- mobile.css
|-- script.js
|-- success.html
`-- README.md
