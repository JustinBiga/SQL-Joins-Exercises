/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT products.name, categories.name
FROM Products
LEFT JOIN categories  ON Products.categoryId = Categories.categoryId
WHERE Categories.Name = 'Computers';

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT products.name, products.price, Reviews.Rating
FROM products
LEFT JOIN Reviews ON Products.ProductID = Reviews.ProductID
WHERE Reviews.rating = 5;


/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT employees.FirstName,employees.employeeID, SUM(Sales.Quantity) AS total
FROM employees 
INNER JOIN Sales ON employees.employeeID = Sales.EmployeeID 
GROUP BY employees.employeeID
ORDER BY total DESC;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT Departments.name AS DepartmentName, categories.name AS CategoryName
FROM departments
LEFT JOIN Categories ON departments.departmentID = categories.departmentID
WHERE categories.name LIKE '%appliances%'
OR categories.name LIKE '%games%';
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT products.name, SUM(sales.quantity) AS TotalSold, SUM(sales.PricePerUnit * sales.Quantity) AS totalPrice 
FROM products
INNER JOIN sales ON products.productID = sales.productID
WHERE products.name LIKE '%Eagles: Hotel%California%'
GROUP BY products.name;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT products.name, reviews.reviewer, reviews.rating, reviews.comment
FROM products
INNER JOIN reviews ON products.productID = reviews.productID
WHERE reviews.Rating = 1;
