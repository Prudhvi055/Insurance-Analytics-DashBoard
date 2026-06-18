/* =========================
   INVOICE ANALYSIS
========================= */
SELECT SUM(Amount) AS TotalInvoiceRevenue
FROM invoice;

#Revenue by income Class
SELECT Income_Class,
       SUM(Amount) AS Revenue
FROM invoice
GROUP BY Income_Class
ORDER BY Revenue DESC;

#Revenue by Branch
SELECT Branch_Name,
       SUM(Amount) AS Revenue
FROM invoice
GROUP BY Branch_Name
ORDER BY Revenue DESC;

#Revenue BY Executive
SELECT AccountExecutive,
       SUM(Amount) AS Revenue
FROM invoice
GROUP BY AccountExecutive
ORDER BY Revenue DESC;
