-- 1 Count average salary of all positions starting with A for the whole period;
SELECT AVG(salarymonth) FROM POSITIONS
WHERE name LIKE 'A%';

-- 2 Find employees who got new position from 2009 to 2016;
SELECT name FROM EMPLOYEES
WHERE id in (SELECT employees_id FROM EMPPOS
                WHERE promotiondate BETWEEN '01/01/2009' AND '31/12/2016'
);

-- 3 Cost of all services provided;
SELECT name, SUM(cost) FROM SERVICES
GROUP BY name;

-- 4 Find all tasks and total payment for it grouped by name where total payment is more than 300
SELECT name, SUM(expenses) FROM TASKS
GROUP BY name
HAVING SUM(expenses)>300;

-- 5 Find all employees that have unique birthdate
SELECT name FROM EMPLOYEES A
WHERE NOT EXISTS (SELECT name FROM EMPLOYEES
                    WHERE A.name=name);

-- 6 Find all positions having simmilar salary
SELECT A.name, B.name FROM POSITIONS A, POSITIONS B
WHERE A.salarymonth = B.salarymonth AND A.name <> B.name;

-- 7 Output all the Tasks and Services having costs and expanses in Desc order
SELECT TASKS.id, TASKS.name, TASKS.expenses FROM TASKS 
UNION 
SELECT SERVICES.id, SERVICES.name, SERVICES.cost FROM SERVICES;

-- 8 Find all clients and their orders;
SELECT CLIENTS.name, ORDERS.id FROM CLIENTS LEFT JOIN ORDERS ON CLIENTS.ID = ORDERS.client_id;

-- 9 Find all employees that were promoted at 2007
SELECT name FROM EMPLOYEES
WHERE name in (SELECT name FROM EMPPOS WHERE promotiondate = '2007');

-- 10 Find All clients that are not unique
SELECT name FROM CLIENTS a
WHERE name in (SELECT name FROM CLIENTS WHERE a.name != name);

insert into emppos values (1, 1, 1, '01/03/2011');
insert into employees values (1, 'Alex', '01/03/1990');
insert into positions values (1, 'Clerk', 500);

select*from employees;
select*from positions;
