CREATE TABLE Clients (
    id INTEGER,
    name VARCHAR2(50),
    PRIMARY KEY (id)
)

CREATE TABLE Emppos (
    id INTEGER,
    position_id INTEGER,
    employees_id INTEGER,
    "date" DATE,
    PRIMARY KEY (id),
    FOREIGN KEY (position_id) REFERENCES Positions(ID),
    FOREIGN KEY (employees_id) REFERENCES Involvedemployees(ID)
)

CREATE TABLE Employees (
    id INTEGER,
    name VARCHAR2(50) ,
    birthdate DATE ,
    PRIMARY KEY (id)
)

CREATE TABLE Involvedemployees (
    id INTEGER,
    order_id INTEGER,
    employees_id INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (order_id) REFERENCES ORDERS(ID),
    FOREIGN KEY (employees_id) REFERENCES Employees(ID)
);

CREATE TABLE Involvedtasks (
    id INTEGER,
    involvedemployees_id INTEGER,
    task_id INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (task_id) REFERENCES Tasks(ID),
    FOREIGN KEY (involvedemployees_id) REFERENCES Involvedemployees(ID)
)

CREATE TABLE Orders (
    id INTEGER,
    "Date" TIMESTAMP,
    address VARCHAR2(100),
    client_id INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (client_id) REFERENCES Clients(ID)
)
CREATE TABLE Positions (
    id INTEGER,
    name VARCHAR2(50),
    salarymonth INTEGER,
    PRIMARY KEY (id)
)

CREATE TABLE Services (
    id INTEGER,
    name VARCHAR2(100),
    cost INTEGER,
    PRIMARY KEY (id)
);

CREATE TABLE Servicesprovided (
    id INTEGER,
    service_id INTEGER,
    order_id INTEGER,
    quantity INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (service_id) REFERENCES Services(ID),
    FOREIGN KEY (order_id) REFERENCES Orders(ID)
);

CREATE TABLE Tasks (
    id INTEGER,
    name VARCHAR2(100),
    expenses INTEGER,
    PRIMARY KEY (id)
);

DROP TABLE Involvedemployees;