-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-08 23:04:02.407

-- tables
-- Table: CustomerInfo
CREATE TABLE CustomerInfo (
    AccountNumber varchar(10) NOT NULL,
    FirstName varchar(15) NOT NULL,
    LastName varchar(15) NOT NULL,
    HouseNumber varchar(5) NOT NULL,
    PreDirectionalCode varchar(3) NOT NULL,
    StreetName varchar(15) NOT NULL,
    StreetType varchar(5) NOT NULL,
    UnitType varchar(5) NOT NULL,
    UnitNumber int NOT NULL,
    City varchar(15) NOT NULL,
    State varchar(2) NOT NULL,
    ZipCode varchar(5) NOT NULL,
    SocialSecurityNumber varchar(9) NOT NULL,
    BirthDate date NOT NULL,
    CONSTRAINT CustomerInfo_pk PRIMARY KEY (FirstName,LastName)
);

-- Table: EmployeeInfo
CREATE TABLE EmployeeInfo (
    EmployeeID varchar(10) NOT NULL,
    StoreNumber varchar(5) NOT NULL,
    Role varchar(10) NOT NULL,
    HourlyPay double NOT NULL,
    FirstName varchar(15) NOT NULL,
    LastName varchar(15) NOT NULL,
    HouseNumber varchar(5) NOT NULL,
    PreDirectionalCode varchar(3) NOT NULL,
    StreetName varchar(15) NOT NULL,
    StreetType varchar(5) NOT NULL,
    UnitType varchar(5) NOT NULL,
    UnitNumber int NOT NULL,
    City varchar(15) NOT NULL,
    State varchar(2) NOT NULL,
    ZipCode varchar(5) NOT NULL,
    SocialSecurityNumber varchar(9) NOT NULL,
    BirthDate date NOT NULL,
    CONSTRAINT EmployeeInfo_pk PRIMARY KEY (EmployeeID)
);

-- Table: PaymentInfo
CREATE TABLE PaymentInfo (
    FirstName varchar(15) NOT NULL,
    LastName varchar(15) NOT NULL,
    CreditCard varchar(16) NOT NULL,
    ExpirationMonth varchar(2) NOT NULL,
    ExpirationYear varchar(2) NOT NULL,
    ZipCode varchar(5) NOT NULL,
    CONSTRAINT PaymentInfo_pk PRIMARY KEY (FirstName,LastName)
);

-- Table: ProductInfo
CREATE TABLE ProductInfo (
    ProductNumber varchar(5) NOT NULL,
    Description varchar(8) NOT NULL,
    Size varchar(3) NOT NULL,
    Quantity int NOT NULL,
    Cost double NOT NULL,
    CONSTRAINT ProductInfo_pk PRIMARY KEY (ProductNumber)
);

-- Table: SalesInfo
CREATE TABLE SalesInfo (
    ProductNumber varchar(5) NOT NULL,
    PurchaseTimestamp timestamp NOT NULL,
    Quantity int NOT NULL,
    Price double NOT NULL,
    ProductInfo_ProductNumber varchar(5) NOT NULL,
    CONSTRAINT SalesInfo_pk PRIMARY KEY (ProductNumber)
);

-- foreign keys
-- Reference: PaymentInfo_CustomerInfo (table: PaymentInfo)
ALTER TABLE PaymentInfo ADD CONSTRAINT PaymentInfo_CustomerInfo FOREIGN KEY PaymentInfo_CustomerInfo (<EMPTY>)
    REFERENCES CustomerInfo (AccountNumber);

-- Reference: ProductInfo_CustomerInfo (table: ProductInfo)
ALTER TABLE ProductInfo ADD CONSTRAINT ProductInfo_CustomerInfo FOREIGN KEY ProductInfo_CustomerInfo (<EMPTY>)
    REFERENCES CustomerInfo (AccountNumber);

-- Reference: SalesInfo_ProductInfo (table: SalesInfo)
ALTER TABLE SalesInfo ADD CONSTRAINT SalesInfo_ProductInfo FOREIGN KEY SalesInfo_ProductInfo (ProductInfo_ProductNumber)
    REFERENCES ProductInfo (ProductNumber);

-- End of file.

