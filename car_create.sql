CREATE TABLE Salesperson (
    SalespersonID SERIAL PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255)
);

CREATE TABLE Customer (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255)
);

CREATE TABLE Car (
    SerialNumber SERIAL PRIMARY KEY,
    Model VARCHAR(255),
    Make VARCHAR(255),
    Year INTEGER
);

CREATE TABLE Mechanic (
    MechanicID SERIAL PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255)
);

CREATE TABLE Invoice (
    InvoiceID SERIAL PRIMARY KEY,
    SalespersonID INTEGER REFERENCES Salesperson(SalespersonID),
    CustomerID INTEGER REFERENCES Customer(CustomerID),
    CarSerialNumber INTEGER REFERENCES Car(SerialNumber),
    Date DATE,
    Amount DECIMAL(10, 2)
);

CREATE TABLE ServiceTicket (
    TicketID SERIAL PRIMARY KEY,
    CustomerID INTEGER REFERENCES Customer(CustomerID),
    CarSerialNumber INTEGER REFERENCES Car(SerialNumber),
    Date DATE,
    IssueDescription TEXT
);

CREATE TABLE ServiceHistory (
    HistoryID SERIAL PRIMARY KEY,
    CarSerialNumber INTEGER REFERENCES Car(SerialNumber),
    ServiceDate DATE,
    ServiceDescription TEXT,
    MechanicID INTEGER REFERENCES Mechanic(MechanicID),
    PartsUsed TEXT
);
