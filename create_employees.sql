CREATE TABLE EMPLOYEE (
  employee_id TINYINT,
  first_name VARCHAR,
  last_name VARCHAR,
  manager_id TINYINT
);

INSERT INTO EMPLOYEE (employee_id, first_name, last_name, manager_id)
VALUES
  (1, 'Ian', 'Smith', 2),
  (2, 'Alex', 'Johnson', 3),
  (3, 'Umberto', 'Rossi', NULL);  -- Example, add real data from CSV
