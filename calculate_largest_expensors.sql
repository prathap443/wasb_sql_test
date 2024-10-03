SELECT company_name, SUM(invoice_amount) AS total_expense
FROM Invoice
GROUP BY company_name
ORDER BY total_expense DESC
LIMIT 1;
