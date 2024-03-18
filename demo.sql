-- Create a table for 5 products with product names and prices
CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DECIMAL(10, 2)
);

-- Insert 5 products into the products table
INSERT INTO products (name, price) VALUES
('Phone', 299.99),
('Laptop', 999.99),
('Tablet', 199.99),
('Monitor', 399.99),
('Headphone', 99.99);
```

To execute the SQL script, you use the following command:

```bash
mysql -u root -p < demo.sql
```

The command above will execute the `demo.sql` script and create a new table `products` and insert 5 products into the `products` table.

The `mysql` command-line tool accepts a file as input and executes the commands in the file. The `-u` option is used to specify the username, and the `-p` option is used to prompt for a password.

## MySQL dump

The `mysqldump` is a command-line utility that allows you to back up the entire database or selected tables. The `mysqldump` tool is useful when you want to back up a database or distribute the database to other people.

The following is the basic syntax of the `mysqldump` command:

```bash
mysqldump -u username -p database_name > file.sql
```

The command above will create a backup of the `database_name` database and save it to the `file.sql` file.

If you want to back up only the `products` table in the `demo` database, you use the following command:

```bash
mysqldump -u username -p demo products > products.sql
```

The command above will create a backup of the `products` table in the `demo` database and save it to the `products.sql` file.

## MySQL restore

The `mysql` command-line utility can be used to restore a backup created by the `mysqldump` tool. The following is the basic syntax of the `mysql` command to restore the `file.sql` file:

```bash
mysql -u username -p database_name < file.sql
```

If you want to restore the `products.sql` file to the `demo` database, you use the following command:

```bash
mysql -u username -p demo < products.sql
```

The command above
