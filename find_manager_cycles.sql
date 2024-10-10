WITH RECURSIVE manager_chain AS (
  SELECT employee_id, manager_id, CAST(employee_id AS VARCHAR) AS path
  FROM EMPLOYEE
  WHERE manager_id IS NOT NULL
  UNION ALL
  SELECT e.employee_id, e.manager_id, CONCAT(mc.path, ',', e.employee_id)
  FROM EMPLOYEE e
  JOIN manager_chain mc ON e.manager_id = mc.employee_id
)
SELECT employee_id, path
FROM manager_chain
WHERE employee_id = manager_id;  -- Detects cycles
