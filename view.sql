CREATE VIEW invoice_payment_report AS
SELECT
    i.invoice_id,
    i.total_amount,
    COALESCE(SUM(p.amount_paid), 0) AS paid_amount,
    i.total_amount - COALESCE(SUM(p.amount_paid), 0) AS outstanding
FROM Invoices i
LEFT JOIN Payments p
    ON i.invoice_id = p.invoice_id
GROUP BY i.invoice_id, i.total_amount;

SELECT *
FROM invoice_payment_report;

SELECT *
FROM invoice_payment_report
WHERE outstanding > 0;

SELECT SUM(outstanding) AS total_outstanding
FROM invoice_payment_report;

SELECT
    (SELECT COALESCE(SUM(amount_paid), 0)
     FROM Payments) AS total_payments,

    (SELECT COALESCE(SUM(total_amount), 0)
     FROM Invoices) AS total_invoiced,

    (SELECT COALESCE(SUM(cost_price * stock_quantity), 0)
     FROM Products) AS inventory_value,

    (SELECT COALESCE(SUM(
        (oi.unit_price - p.cost_price) * oi.quantity
     ), 0)
     FROM Order_Items oi
     JOIN Products p ON oi.product_id = p.product_id
    ) AS estimated_profit;
    
CREATE VIEW erp_dashboard_summary AS
SELECT
    (SELECT COALESCE(SUM(amount_paid), 0)
     FROM Payments) AS total_payments,

    (SELECT COALESCE(SUM(total_amount), 0)
     FROM Invoices) AS total_invoiced,

    (SELECT COALESCE(SUM(cost_price * stock_quantity), 0)
     FROM Products) AS inventory_value,

    (SELECT COALESCE(SUM(
        (oi.unit_price - p.cost_price) * oi.quantity
     ), 0)
     FROM Order_Items oi
     JOIN Products p ON oi.product_id = p.product_id
    ) AS estimated_profit;    
    
SELECT *
FROM erp_dashboard_summary;

SELECT
    c.customer_id,
    c.name AS customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC;

SELECT
    p.product_id,
    p.name AS product_name,
    SUM(oi.quantity) AS total_quantity_sold,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM Products p
JOIN Order_Items oi
    ON p.product_id = oi.product_id
GROUP BY p.product_id, p.name
ORDER BY total_revenue DESC;    
    