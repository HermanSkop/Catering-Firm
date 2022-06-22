CREATE TABLE Clients (
    id INTEGER,
    name VARCHAR2(50),
    CONSTRAINT clientId PRIMARY KEY (id)
);

CREATE TABLE Tasks (
    id INTEGER,
    name VARCHAR2(100),
    expenses INTEGER,
    CONSTRAINT taskId PRIMARY KEY (id)
);

CREATE TABLE Services (
    id INTEGER,
    name VARCHAR2(100),
    cost INTEGER,
    CONSTRAINT serviceId PRIMARY KEY (id)
);

CREATE TABLE Employees (
    id INTEGER,
    name VARCHAR2(50) ,
    birthdate DATE ,
    CONSTRAINT employeeId PRIMARY KEY (id)
);

CREATE TABLE Positions (
    id INTEGER,
    name VARCHAR2(50),
    salarymonth INTEGER,
    CONSTRAINT posId PRIMARY KEY (id)
);


CREATE TABLE Orders (
    id INTEGER,
    orderdate TIMESTAMP,
    address VARCHAR2(100),
    client_id INTEGER,
    CONSTRAINT orderId PRIMARY KEY (id),
    FOREIGN KEY (client_id) REFERENCES Clients(ID)
);


CREATE TABLE Involvedemployees (
    id INTEGER,
    order_id INTEGER,
    employees_id INTEGER,
    CONSTRAINT involvedEmpId PRIMARY KEY (id),
    FOREIGN KEY (order_id) REFERENCES ORDERS(ID),
    FOREIGN KEY (employees_id) REFERENCES Employees(ID)
);

CREATE TABLE Emppos (
    id INTEGER,
    position_id INTEGER,
    employees_id INTEGER,
    promotiondate DATE,
    CONSTRAINT empposId PRIMARY KEY (id),
    FOREIGN KEY (position_id) REFERENCES Positions(id),
    FOREIGN KEY (employees_id) REFERENCES employees(id)
);

CREATE TABLE Involvedtasks (
    id INTEGER,
    involvedemployees_id INTEGER,
    task_id INTEGER,
    CONSTRAINT involvedTaskId PRIMARY KEY (id),
    FOREIGN KEY (task_id) REFERENCES Tasks(ID),
    FOREIGN KEY (involvedemployees_id) REFERENCES Involvedemployees(ID)
);

CREATE TABLE Servicesprovided (
    id INTEGER,
    service_id INTEGER,
    order_id INTEGER,
    quantity INTEGER,
    CONSTRAINT serviceProvidedId PRIMARY KEY (id),
    FOREIGN KEY (service_id) REFERENCES Services(ID),
    FOREIGN KEY (order_id) REFERENCES Orders(ID)
);



