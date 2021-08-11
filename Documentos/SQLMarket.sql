--CREATE DATABASE Market

CREATE TABLE Category (
	CategoryId   INT PRIMARY KEY NOT NULL,
	CategoryName VARCHAR(50) NOT NULL
);

CREATE TABLE Supplier(
	SupplierId  INT PRIMARY KEY,
	CompanyName NVARCHAR(100) NOT NULL UNIQUE,
	ContactName NVARCHAR(50)  NOT NULL,
	City		NVARCHAR(50)  NOT NULL,
	Address		NVARCHAR(100) NOT NULL,
	Phone		NVARCHAR(20)  NOT NULL
);

CREATE TABLE Product (
	ProductId   INT PRIMARY KEY NOT NULL,
	ProductName VARCHAR(50) NOT NULL,
	SupplierId  INT FOREIGN KEY REFERENCES Supplier(SupplierId),
	CategoryId  INT FOREIGN KEY REFERENCES Category(CategoryId),
	UnitPrice   MONEY NOT NULL
);

CREATE TABLE Employee (
	EmployeeId INT PRIMARY KEY,
	FirstName  NVARCHAR(50) NOT NULL,
	LastName   NVARCHAR(50) NOT NULL,
	Title	   NVARCHAR(10),
	Gender	   NCHAR(2) CHECK (Gender in ('M', 'F')),
	BirthDate  DATETIME, DEFAULT GETDATE(),
	HireDate   DATETIME, DEFAULT GETDATE(),
	State	   NVARCHAR(50) DEFAULT 'Ohio',
	Country	   NVARCHAR(10) DEFAULT 'USA',
	City       NVARCHAR(100) DEFAULT 'Toleto',
	Photo	   IMAGE
);

CREATE TABLE Customer (
	CustomerId INT PRIMARY KEY,
	FirstName  NVARCHAR(30) NOT NULL,
	LastName   NVARCHAR(30),
	State	   NVARCHAR(30) DEFAULT 'Ohio',
	Country	   NVARCHAR(10) DEFAULT 'USA'
);

CREATE TABLE Orders (
	OrdersId	 INT PRIMARY KEY,
	CurstomerId  INT FOREIGN KEY REFERENCES Customer(CustomerId),
	EmployeeId   INT FOREIGN KEY REFERENCES Employee(EmployeeId),
	OrderDate    DATETIME DEFAULT GETDATE(),
	ShippingDate DATETIME DEFAULT GETDATE()
);

CREATE TABLE OrderDetail (
	OrdersDetailId INT PRIMARY KEY,
	ProductId	   INT FOREIGN KEY REFERENCES Product(ProductId),
	Quantity	   SMALLINT DEFAULT 0,
	UnitPrice	   MONEY NOT NULL
);