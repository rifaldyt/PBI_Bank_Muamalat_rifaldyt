create table bank_muamalat."Customers" (
	"CustomerID" int,
	"FirstName" varchar (50),
	"LastName" varchar (50),
	"CustomerEmail" varchar (255),
	"CustomerPhone" varchar (20),
	"CustomerAddress" varchar (50),
	"CustomerCity" varchar (50),
	"CustomerState" varchar (50),
	"CustomerZip" int,
	primary key ("CustomerID")
);

select * from "Customers" 

create table bank_muamalat."Orders"(
	"OrderID" int,
	"Date" date,
	"CustomerID" int,
	"ProdNumber" varchar (20),
	"Quantity" int,
	primary key ("OrderID"),
	foreign key ("CustomerID") references "Customers"("CustomerID")
);

-- Menambahkan foreign key pada tabel Products
ALTER TABLE bank_muamalat."Orders"
ADD CONSTRAINT "FK_Product_Order"
FOREIGN KEY ("ProdNumber") REFERENCES "Products"("ProdNumber");


create table bank_muamalat."Products"(
	"ProdNumber" varchar (50),
	"ProdName" varchar (100),
	"Category" int,
	"Price" decimal,
	primary key ("ProdNumber")
);

create table bank_muamalat."Product_Category"(
	"CategoryID" int,
	"CategoryName" varchar (50),
	"CategoryAbbreviation" varchar (10),
	primary key ("CategoryID")
	
);

alter table bank_muamalat."Products"
add constraint "fk_product_cat"
foreign key ("Category") references "Product_Category"("CategoryID");

select * from "Orders" o 
