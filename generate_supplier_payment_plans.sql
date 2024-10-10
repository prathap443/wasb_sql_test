WITH invoice_payments AS (
  SELECT supplier_id, invoice_amount, LEAST(invoice_amount, 1500) AS payment_amount,
         invoice_amount - LEAST(invoice_amount, 1500) AS remaining_balance,
         LAST_DAY(CURRENT_DATE) AS payment_date
  FROM INVOICE
)
SELECT sp.supplier_id, sp.name AS supplier_name, ip.payment_amount, ip.remaining_balance, ip.payment_date
FROM SUPPLIER sp
JOIN invoice_payments ip ON sp.supplier_id = ip.supplier_id
ORDER BY sp.supplier_id, ip.payment_date;
