CREATE TABLE EXPENSE (
  employee_id TINYINT,
  unit_price DECIMAL(8, 2),
  quantity TINYINT
);

INSERT INTO EXPENSE (employee_id, unit_price, quantity)
VALUES
  (1, 10.50, 3),
  (2, 25.75, 2),
  (3, 100.00, 1);  -- Example, add real data from receipts
