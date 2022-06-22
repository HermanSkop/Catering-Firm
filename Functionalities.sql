-- 1 Count average salary of all positions starting with C for the whole period;
SELECT AVG(NVL(salarymonth,0)) FROM POSITIONS
WHERE name LIKE 'C%';

-- 2 Find employees who got new position from 2009 to 2016;
SELECT name FROM EMPLOYEES
WHERE id in (SELECT employees_id FROM EMPPOS
                WHERE promotiondate BETWEEN '01/01/2009' AND '31/12/2016'
);

-- 3 Cost of all services that can be provided by the company;
SELECT SUM(cost) FROM SERVICES;

-- 4 Find all tasks ever given to workers where total count is more than 1
SELECT name FROM TASKS, INVOLVEDTASKS
WHERE tasks.id = task_id 
GROUP BY name
HAVING COUNT(name)>1;

-- 5 Find all employees that have unique name
SELECT name FROM EMPLOYEES A
WHERE EXISTS (SELECT name FROM EMPLOYEES B
                    WHERE A.name=B.name and A.id!=B.id)
group by name;

-- 6 Find all positions having simmilar salary
SELECT A.name FROM POSITIONS A, POSITIONS B
WHERE A.salarymonth = B.salarymonth AND A.name <> B.name;

-- 7 Output all the Tasks and Services having costs and expanses in Desc order
SELECT TASKS.id, TASKS.name, TASKS.expenses FROM TASKS 
UNION 
SELECT SERVICES.id, SERVICES.name, SERVICES.cost FROM SERVICES;

-- 8 Find all clients and their orders;
SELECT CLIENTS.name, ORDERS.id FROM CLIENTS LEFT JOIN ORDERS ON CLIENTS.ID = ORDERS.client_id;

-- 9 Find all employees that were promoted at 2014
SELECT name FROM EMPLOYEES
WHERE name in (SELECT name FROM EMPPOS WHERE promotiondate between '01/01/2014' and '01/01/2015' 
                    and EMPLOYEES.id = EMPPOS.employees_id);

-- 10 Find All clients that are not unique
SELECT name FROM CLIENTS a
WHERE name in (SELECT name FROM CLIENTS WHERE a.name = name and id!=a.id)
group by name;

select*from employees;
select*from positions;
