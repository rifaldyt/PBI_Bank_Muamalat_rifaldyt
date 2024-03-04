CREATE TABLE table_master AS (
    SELECT 
        ord."Date",
        prodCat."CategoryName",
        prod."ProdName",
        prod."Price",
        ord."Quantity",
        (ord."Quantity" * prod."Price") AS "TotalSales",
    	cust."CustomerEmail", 
        cust."CustomerCity"
 
    FROM 
        "Orders" ord
        JOIN "Customers" cust ON ord."CustomerID" = cust."CustomerID"
        JOIN "Products" prod ON ord."ProdNumber" = prod."ProdNumber"
        JOIN "Product_Category" prodCat ON prodCat."CategoryID" = prod."Category"
        
    ORDER BY 
        ord."Date", ord."Quantity"
);

select * from table_master tm 



