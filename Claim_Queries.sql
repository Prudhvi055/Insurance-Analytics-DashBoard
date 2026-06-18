/* =========================
   CLAIMS ANALYSIS
========================= */
#Total Claims
Select Count(*) AS totalclaims 
FROM Claims;

#TotaL Claim amount
SELECT SUM(claimamount) as totalclaimamount 	
From claims ;

#Total approved and denied claims
SELECT claimstatus,
		count(*) as Total 
FROM Claims
GROUP BY claimstatus 
ORDER BY Total DESC;


#policy Type vs claims
SELECT p.PolicyType,
       COUNT(c.ClaimID) AS TotalClaims
FROM policy p
JOIN claims c
ON p.PolicyID=c.PolicyID
GROUP BY p.PolicyType;