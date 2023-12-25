
INSERT INTO Salesperson (FirstName, LastName) VALUES
    ('John', 'Doe'),
    ('Alice', 'Smith'),
    ('Bob', 'Johnson');


INSERT INTO Customer (FirstName, LastName) VALUES
    ('Jane', 'Williams'),
    ('Mark', 'Davis'),
    ('Emily', 'Taylor');


INSERT INTO Car (Model, Make, Year) VALUES
    ('Civic', 'Honda', 2022),
    ('Camry', 'Toyota', 2021),
    ('Accord', 'Honda', 2023);

INSERT INTO Mechanic (FirstName, LastName) VALUES
    ('Mike', 'Miller'),
    ('Sara', 'Brown'),
    ('Tom', 'Clark');

INSERT INTO Invoice (SalespersonID, CustomerID, CarSerialNumber, Date, Amount) VALUES
    (1, 1, 1, '2023-01-15', 25000.00),
    (2, 2, 2, '2023-02-20', 28000.00),
    (3, 3, 3, '2023-03-25', 30000.00);


INSERT INTO ServiceTicket (CustomerID, CarSerialNumber, Date, IssueDescription) VALUES
    (1, 1, '2023-04-10', 'Engine check'),
    (2, 2, '2023-05-15', 'Brake inspection'),
    (3, 3, '2023-06-20', 'Oil change');


INSERT INTO ServiceHistory (CarSerialNumber, ServiceDate, ServiceDescription, MechanicID, PartsUsed) VALUES
    (1, '2023-04-15', 'Replaced spark plugs', 1, 'NGK Spark Plugs'),
    (2, '2023-05-20', 'Replaced brake pads', 2, 'Brembo Brake Pads'),
    (3, '2023-06-25', 'Changed oil and filter', 3, 'Mobil 1 Oil, Fram Filter');
