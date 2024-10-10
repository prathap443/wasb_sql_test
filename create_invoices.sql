CREATE TABLE SUPPLIER (
  supplier_id TINYINT,
  name VARCHAR
);

CREATE TABLE INVOICE (
  supplier_id TINYINT,
  invoice_amount DECIMAL(8, 2),
  due_date DATE
);

INSERT INTO SUPPLIER (supplier_id, name)
VALUES
  (1, 'Catering Plus'),
  (2, 'Party Supplies Ltd');

INSERT INTO INVOICE (supplier_id, invoice_amount, due_date)
VALUES
  (1, 2000.00, '2024-12-31'),
  (2, 1500.00, '2024-12-31');
