#create database project;
show databases;
use project;

#1.	Import Data from table Grocery Sales using the provided CSV File.
select * from grocery_store gs ;

#2.	Write an SQL query to show all Item_Identifier
select Item_Identifier from grocery_store gs ;

#3.	Write an SQL query to show count of total Item_Identifier.
select count(Item_Identifier) from grocery_store gs ;

#4.	Write an SQL query to show maximum Item Weight.
select max(item_weight) from grocery_store gs; 

#5.	Write an SQL query to show minimum Item Weight.
select min(item_weight) from grocery_store gs;

#6.	Write an SQL query to show average Item_Weight.
select avg(item_weight) from grocery_store gs;

#7.	Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
select count(Item_fat_content) from grocery_store where Item_fat_content = 'low fat';

#8.	Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.
select count(Item_fat_content) from grocery_store where Item_fat_content = 'regular';

#9.	Write an SQL query to show maximum Item_MRP 
select max(Item_MRP) from grocery_store gs ;

#10.	Write an SQL query to show minimum Item_MRP
select min(Item_MRP) from grocery_store gs ;

#11.	show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.
select Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP from grocery_store where Item_MRP>200;

#12.	Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat 
select max(Item_MRP) from grocery_store gs where Item_Fat_Content = 'low fat';

#13.	Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat 
select min(Item_MRP) from grocery_store gs where Item_Fat_Content = 'low fat';

#14.	Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100
select * from grocery_store gs where item_MRP between 50 and 100; 

#15.	Write an SQL query to show ALL UNIQUE value of Item_Fat_Content
select distinct Item_Fat_Content from Grocery_Store;

#16.	Write an SQL query to show ALL UNIQUE value of  Item_Type 
select distinct Item_type from grocery_store gs ;

#17.	show ALL DATA in descending ORDER by Item MRP
select * from grocery_store gs order by Item_MRP desc;

#18.	ALL DATA in ascending ORDER by Item_Outlet_Sales
select * from grocery_store gs order by Item_Outlet_Sales asc;

#19.	Write an SQL query to show ALL DATA in ascending by Item_Type 
select * from grocery_store gs order by Item_Type asc;

#20.	Write an SQL query to show DATA of item_type dairy & Meat
select * from grocery_store gs where item_type in('dairy','meat');

#21.	Write an SQL query to show ALL UNIQUE value of Outlet_Size 
select distinct outlet_size from grocery_store gs ;

#22.	 ALL UNIQUE value of Outlet_Location_Type
select distinct outlet_location_type from grocery_store gs ;

#23.	 ALL UNIQUE value of Outlet_Type 
select distinct Outlet_Type from grocery_store gs ;

#24. count of number of items by Item_Type  and order it in descending order
select Item_Type , count(*)No_Of_Item
FROM Grocery_Store  
GROUP BY Item_Type  
ORDER BY No_Of_Item DESC;

#25. count of number of items by Outlet_Size and ordered it in ascending order
select item_type , count(*)outlet_size
from grocery_store gs 
group by Item_Type order by Outlet_Size asc;

#26. count of number of items by Outlet_Type  and ordered it in descending order.
select item_type , count(*)outlet_type
from grocery_store gs 
group by item_type order by outlet_type desc;

#27. count of items by Outlet_Location_Type and order it in descending order
select item_type , count(*)Outlet_Location_Type
from grocery_store gs 
group by item_type order by Outlet_Location_Type desc;

#28. maximum MRP by Item_Type 
SELECT  Item_Type, Max(Item_MRP) Max_MRP  
FROM Grocery_Store  
GROUP BY Item_Type;

#29. minimum MRP by Item_Type 
select item_type , min(item_MRP) min_MRP
from grocery_store gs 
group by item_type;

#30. minimum MRP by Outlet_Establishment_Year and order it in descending order.
select Outlet_Establishment_Year , min(item_MRP) min_MRP
from grocery_store gs 
group by Outlet_Establishment_Year order by min_MRP desc;

#31. maximum MRP by Outlet_Establishment_Year and order it in descending order.
select Outlet_Establishment_Year , max(item_MRP) max_MRP
from grocery_store gs 
group by Outlet_Establishment_Year order by max_MRP desc;

#32. average MRP by Outlet_Size and order it in descending order.
select Outlet_Size , avg(item_MRP) avg_MRP
from grocery_store gs 
group by Outlet_Size order by avg_MRP desc;

#33. Average MRP by Outlet_Type and ordered in ascending order.
select Outlet_Type , avg(item_MRP) avg_MRP
from grocery_store gs 
group by Outlet_Type order by avg_MRP desc;

#34. maximum MRP by Outlet_Type
select Outlet_Type , max(item_MRP) max_MRP
from grocery_store gs 
group by Outlet_Type order by max_MRP desc;

#35. maximum Item_Weight by Item_Type 
select item_type , max(Item_Weight)max_weight
from grocery_store
GROUP BY Item_Type  
ORDER BY max_weight DESC;

#36. maximum Item_Weight by Outlet_Establishment_Year 
select outlet_establishment_year , max(item_weight) max_item_weight
from grocery_store gs 
group by outlet_establishment_year
order by max_item_weight ;

#37. minimum Item_Weight by Outlet_Type 
select Outlet_Type , max(item_weight) max_item_weight
from grocery_store gs 
group by Outlet_Type
order by max_item_weight ;

#38. average Item_Weight by Outlet_Location_Type and arrange it by descending order
select Outlet_Location_Type , avg(item_weight) max_item_weight
from grocery_store gs 
group by Outlet_Location_Type
order by max_item_weight desc;

#39. maximum Item_Outlet_Sales by Item_Type
select Item_Type , max(Item_Outlet_Sales) max_Item_Outlet_Sales
from grocery_store gs 
group by Item_Type
order by max_Item_Outlet_Sales;

#40. minimum Item_Outlet_Sales by Item_Type 
select Item_Type , min(Item_Outlet_Sales) min_Item_Outlet_Sales
from grocery_store gs 
group by Item_Type
order by min_Item_Outlet_Sales;

#41. minimum Item_Outlet_Sales by Outlet_Establishment_Year 
select Outlet_Establishment_Year , min(Item_Outlet_Sales) min_Item_Outlet_Sales
from grocery_store gs 
group by Outlet_Establishment_Year
order by min_Item_Outlet_Sales;

#42. maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order
select Outlet_Establishment_Year , max(Item_Outlet_Sales) max_Item_Outlet_Sales
from grocery_store gs 
group by Outlet_Establishment_Year
order by max_Item_Outlet_Sales desc ;

#43. average Item_Outlet_Sales by Outlet_Size and order it it descending order
select Outlet_Size , avg(Item_Outlet_Sales) avg_Item_Outlet_Sales
from grocery_store gs 
group by Outlet_Size
order by avg_Item_Outlet_Sales desc ;

#44. average Item_Outlet_Sales by Outlet_Type
select Outlet_type , avg(Item_Outlet_Sales) avg_Item_Outlet_Sales
from grocery_store gs 
group by Outlet_type
order by avg_Item_Outlet_Sales ;

#45. maximum Item_Outlet_Sales by Outlet_Type 
select Outlet_type , max(Item_Outlet_Sales) max_Item_Outlet_Sales
from grocery_store gs 
group by Outlet_type
order by max_Item_Outlet_Sales ;

#46. total Item_Outlet_Sales by Item_Type 
select Item_Type, sum(Item_Outlet_Sales) total_sales
from Grocery_Store 
group by Item_Type 
order by total_sales;

#47. total Item_Outlet_Sales by Item_Fat_Content 
select Item_Fat_Content, sum(Item_Outlet_Sales) total_sales
from Grocery_Store 
group by Item_Fat_Content 
order by total_sales;

#48. maximum Item_Visibility by Item_Type
select Item_Type , max(Item_Visibility) max_visibility
from Grocery_Store 
group by Item_Type 
order by max_visibility;

#49. Minimum Item_Visibility by Item_Type 
select Item_Type , min(Item_Visibility) min_visibility
from Grocery_Store 
group by Item_Type 
order by min_visibility;

#50. total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1 
select Item_Type, sum(Item_Outlet_Sales)Total_sales
from Grocery_Store where Outlet_Location_Type = 'Tier 1'
group by Item_Type 
order by Total_sales; 

#51. total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF
select Item_Type, sum(Item_Outlet_Sales)Total_sales
from Grocery_Store where Item_Fat_Content in ('Low Fat', 'LF')
group by Item_Type 
order by Total_sales desc; 
