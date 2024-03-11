1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.

   	The Product Entity holds the data of one particular product that is unique in its category. 
   	Meanwhile product_category holds the group of products that falls in similiar entity 
  
   	This relationship holds a 1 to N relationship where a product can have only one product category 
   	while product_category can have many products.

2. How could you ensure that each product in the "Product" table has a valid category assigned to it?

   	Since product_category entity has a unique id for each category present in the product_category table 
  	so there has to be exactly 1 category which will be assigned to every product of the products table.
