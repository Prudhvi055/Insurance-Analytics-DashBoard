/* =========================
   MEETING ANALYSIS
========================= */

select* from meeting;

#Total meetings
SELECT COUNT(AccountExecutive) AS totalmeetings from Meeting;

#Meetigs done by account executives
SELECT Accountexecutive,COUNT(*) as Total FROM meeting group  by accountexecutive Order by total DESC;

#meetings done by branches
SELECT branch_name,Count(*) as Total From meeting group by branch_name order by total desc;

#oppurtunity Queries
select * from oppurtunity;
Select count(*) as TotalOppurtunity FROM oppurtunity;

#revenue generated
SELECT SUM(Revenue_Amount) AS TotalRevenue
FROM oppurtunity;	

#premium Generated
SELECT SUM(Premium_Amount) AS TotalPremium
FROM oppurtunity;

#oppurtunity by stage
SELECT Stage,
       COUNT(*) AS Total
FROM oppurtunity;

#revenue by product group
SELECT Product_Group,
       SUM(Revenue_Amount) AS Revenue
FROM oppurtunity;

#top 10 Executives by revenue
SELECT AccountExecutive,
       SUM(Revenue_Amount) AS Revenue
FROM oppurtunity;
