/* =========================
   BUDGET ANALYSIS
========================= */

#Total BUdget for various classes 
SELECT SUM(NewBudget) as total FROM indbudget;
SELECT SUM(renewalbudget) as total FROM indbudget;
SELECT SUM(CrossSellBudget) as total FROM indbudget;

#budget by Branch
SELECT Branch,
       SUM(NewBudget) AS NewBudget,
       SUM(CrossSellBudget) AS CrossSellBudget,
       SUM(RenewalBudget) AS RenewalBudget
FROM indbudget
GROUP BY Branch
ORDER BY RenewalBudget DESC;

#Top 10 Employees by Total Budget
SELECT EmployeeName,
       (NewBudget + CrossSellBudget + RenewalBudget) AS TotalBudget
FROM indbudget
ORDER BY TotalBudget DESC
LIMIT 10;

#branch contribution to total budget
SELECT Branch,
       ROUND(
       SUM(NewBudget + CrossSellBudget + RenewalBudget)
       *100/
       (SELECT SUM(NewBudget + CrossSellBudget + RenewalBudget)
        FROM indbudget)
       ,2) AS ContributionPercent
FROM indbudget
GROUP BY Branch
ORDER BY ContributionPercent DESC;
