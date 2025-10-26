SELECT * FROM intern.sales_data_new;
use intern;
 set sql_safe_updates=0;
 
 #1.Calculate monthly sales and profit by region
SELECT Region,
DATE_FORMAT(Order_Date, '%M') AS Month_Name,sum(Sales) as sales,sum(Profit) as profit
FROM intern.sales_data_new
group by region,Order_Date;

#2. Find top 10 products by sales.

select Product_Id, sum(Sales) as Sales from intern.sales_data_new
group by Product_Id
order by Sales desc
limit 10;

# 3.Count number of orders per customer.
 
 select Customer_Id,count(Order_Id) as Count_of_order from intern.sales_data_new
 group by Customer_Id;


#4.Join both datasets on Region or CustomerID to analyze demographic-based trends.



