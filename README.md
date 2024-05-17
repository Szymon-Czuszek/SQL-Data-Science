# SQL Data Science

This repository contains a collection of SQL code snippets for various purposes. Feel free to browse through the snippets and use them in your projects.

## Usage

Each SQL file contains a specific code snippet. You can use these snippets directly in your database management system or incorporate them into your projects.

## Snippet List

1. `BasicSelect.sql`: Retrieves all information about suppliers from the Northwind database.
2. `PartialSelect.sql`: Retrieves partial information about suppliers from the Northwind database.
3. `OrderBy.sql`: Retrieves information about suppliers sorted by city from the Northwind database.
4. `Distinct.sql`: Retrieves unique cities where supplier locations are found from the Northwind database.
5. `WhereIn.sql`: Retrieves formatted company names from suppliers located in London and Osaka from the Northwind database.
6. `Like.sql`: Retrieves companies whose names start with the letter B from the Northwind database.
7. `Length.sql`: Retrieves companies whose names are longer than 10 characters from the Northwind database.
8. `Like%.sql`: Retrieves addresses from suppliers where the address starts with '22' from the Northwind database.
9. `WhereGreaterThan.sql`: Retrieves product names and the quantity needed to purchase in order to exceed the reorder level from the Northwind database.
10. `ReorderLevel.sql`: Retrieves product names, supplier addresses, and the quantity of products needed to purchase in order to exceed the reorder level by 100 units from the Northwind database.
11. `DiscontinuedProducts.sql`: Retrieves the names of products that have been discontinued from the Northwind database.
12. `BirthdateFilter.sql`: Retrieves employees born before January 1, 1980, from the Northwind database.
13. `DateComparison.sql`: Checks if the birthdate of employees is greater than their hire date in the Northwind database.
14. `AverageSalary.sql`: Calculates the average salary of employees in the company, rounding the result to two decimal places.
15. `SalaryStatistics.sql`: Displays the minimum, maximum, and average salary of employees in the company.
16. `SalesRepresentativeAverageSalary.sql`: Shows the average salary of Sales Representatives in both dollar and local currency formats.
17. `EmployeeCityCount.sql`: Shows the number of employees per city they reside in from the Northwind database.
18. `EmployeeCityCountFilter.sql`: Filters cities with more than 2 employees from the Northwind database.
19. `BestPay.sql`: Retrieves the three highest-paid employees from the company.
20. `ProductsFromExoticLiquids.sql`: Retrieves products supplied by Exotic Liquids.
21. `ProductsFromLekaTradingWithStock.sql`: Retrieves products supplied by Leka Trading with a stock quantity of at least 20.
22. `OrdersPerCustomer.sql`: Retrieves the number of orders for each customer.
23. `MaxProfitDay2017.sql`: Determines the day in the year 2017 when the company recorded the highest profit.
24. `SalesProfitByDayOfMonth.sql`: Shows how sales profit varies by day of the month across all years in the database.
25. `ProfitForTofuByDayOfMonth.sql`: Shows how profit for the product Tofu varies by day of the month across all years in the database.
26. [DiscountStatsPerCustomer.sql](DiscountStatsPerCustomer.sql): Shows total discount amount, average discount amount, and the number of transactions for each customer.
27. [EmployeesWithFewestCustomersQ1_2017.sql](EmployeesWithFewestCustomersQ1_2017.sql): Identifies the three employees who served the fewest customers in the first quarter of 2017.
28. [FutureServiceAnniversary.sql](FutureServiceAnniversary.sql): Determines whether there are employees who will celebrate their 20th, 25th, 30th, or 40th work anniversaries in the upcoming year.
29. [AverageAgeByJobTitle.sql](AverageAgeByJobTitle.sql): Calculates the average age of employees by job titles.
30. [MostTransactionsPerYearByEmployee.sql](MostTransactionsPerYearByEmployee.sql): Retrieves the age, first name, last name, number of transactions, and age of the employee who conducted the most transactions in each year.
31. [ProductWithHighestUnitPrice.sql](ProductWithHighestUnitPrice.sql): Retrieves the product with the highest unit price.
32. [ProductWithLeastQuantityInStock.sql](ProductWithLeastQuantityInStock.sql): Retrieves products with the least quantity in stock.
33. [BeverageWithLeastQuantityInStock.sql](BeverageWithLeastQuantityInStock.sql): Finds the beverage with the least quantity in stock.
34. [ProductsBelowAvgBeverageStock.sql](ProductsBelowAvgBeverageStock.sql): Finds products with less than the average quantity of beverages in stock.
35. [EmployeesMinMaxSalaryByYear.sql](EmployeesMinMaxSalaryByYear.sql): Finding employees who earn the least and the most with division by years.
36. [CustomerWithHighestTotalDiscount.sql](CustomerWithHighestTotalDiscount.sql): Finding the customer who received the highest total discount.
37. [CustomerWithHighestProductQuantity.sql](CustomerWithHighestProductQuantity.sql): Finding the customer who purchased the highest quantity of a specific product.
38. [CustomerWithMostOrders.sql](CustomerWithMostOrders.sql): Determining which customer placed the most orders.
39. [EmployeeWithMostTransactions2016.sql](EmployeeWithMostTransactions2016.sql): Determining which employee had the most transactions in 2016.
40. [EmployeesMoreCustomersThanKing.sql](EmployeesMoreCustomersThanKing.sql): Determining which employees serve more customers than the employee with the surname "King".
41. [EmployeeBonusCalculation.sql](EmployeeBonusCalculation.sql): Calculating bonus for employees based on the number of orders they handled in 2017.
42. [EmployeeSalesSummary.sql](EmployeeSalesSummary.sql): Generating a summary of sales made by each employee in 2018.

## Contributing

Contributions to this repository are welcome! If you have SQL code snippets that you think would be helpful for others, feel free to submit a pull request.

## License

This repository is licensed under the [MIT License](LICENSE).
