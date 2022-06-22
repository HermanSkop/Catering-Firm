insert into clients values (1, 'Clare');
insert into clients values (2, 'Ann');
insert into clients values (3, 'Patrick');
insert into clients values (4, 'Clare');
SELECT * FROM clients;

insert into tasks values (1, 'Serve the table', 50);
insert into tasks values (2, 'Design restaraunt', 3000);
insert into tasks values (3, 'Make food for 30 people', 2500);

SELECT * FROM tasks;

insert into Services values (1, 'Serve the table', 5000);
insert into Services values (2, 'Design restaraunt', 4000);
insert into Services values (3, 'Provide entertainer', 25000);
SELECT * FROM Services;

insert into employees values (1, 'Kate', '01/03/2000');
insert into employees values (2, 'Andrew', '01/03/1976');
insert into employees values (3, 'Andy', '01/03/1997');
insert into employees values (4, 'Garry', '01/03/2002');
insert into employees values (5, 'Andrew', '01/03/2002');
SELECT * FROM Employees;

insert into positions values (1, 'Clerk', 35000);
insert into positions values (2, 'Cashier', 30000);
insert into positions values (3, 'Manager', 50000);
insert into positions values (4, 'Administrator', 50000);
SELECT * FROM positions;
-----------------------------------------------------------------------------
insert into Orders values (1, '01/03/2022', 'Bitwy Warszawskiej 15', 1);
insert into Orders values (2, '12/07/2022', 'Warszawskiej 9', 2);
insert into Orders values (3, '30/05/2022', 'Bitwy 4', 3);
SELECT * FROM Orders;
-----------------------------------------------------------------------------
insert into Involvedemployees values (1, 1, 1);
insert into Involvedemployees values (2, 2, 2);
insert into Involvedemployees values (3, 3, 3);
SELECT * FROM Involvedemployees;

insert into emppos values (1, 1, 1, '01/03/2006');
insert into emppos values (2, 2, 2, '01/03/2012');
insert into emppos values (3, 3, 3, '01/03/2020');
insert into emppos values (4, 2, 4, '01/03/2014');
insert into emppos values (5, 3, 5, '01/03/2011');
SELECT * FROM emppos;

insert into Involvedtasks values (1, 1, 1);
insert into Involvedtasks values (2, 2, 2);
insert into Involvedtasks values (3, 3, 3);
insert into Involvedtasks values (4, 2, 1);
SELECT * FROM Involvedtasks;

insert into Servicesprovided values (1, 1, 1, 5);
insert into Servicesprovided values (2, 2, 2, 1);
insert into Servicesprovided values (3, 3, 3, 1);
SELECT * FROM Servicesprovided;
