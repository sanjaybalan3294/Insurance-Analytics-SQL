-- ============================================================
-- INSURANCE ANALYTICS PROJECT
-- SQL Data Analysis
-- Author: Sanjay Balan
-- ============================================================


-- ============================================================
-- 1. TOTAL NUMBER OF POLICIES
-- ============================================================

SELECT COUNT(DISTINCT policy_id) AS Total_Policies
FROM policy_details;


-- ============================================================
-- 2. TOTAL NUMBER OF CUSTOMERS
-- ============================================================

SELECT COUNT(DISTINCT customer_id) AS Total_Customers
FROM policy_details;


-- ============================================================
-- 3. POLICY DISTRIBUTION BY AGE GROUP
-- ============================================================

SELECT
    c.age_bucket,
    COUNT(p.policy_id) AS Total_Policies
FROM customers AS c
JOIN policy_details AS p
    ON c.customer_id = p.customer_id
GROUP BY c.age_bucket
ORDER BY c.age_bucket;


-- ============================================================
-- 4. POLICY DISTRIBUTION BY GENDER
-- ============================================================

SELECT
    c.gender,
    COUNT(p.policy_id) AS Total_Policies
FROM customers AS c
JOIN policy_details AS p
    ON c.customer_id = p.customer_id
GROUP BY c.gender
ORDER BY c.gender;


-- ============================================================
-- 5. POLICY DISTRIBUTION BY POLICY TYPE
-- ============================================================

SELECT
    policy_type,
    COUNT(policy_id) AS Total_Policies
FROM policy_details
GROUP BY policy_type
ORDER BY Total_Policies DESC;


-- ============================================================
-- 6. POLICIES EXPIRING IN 2026
-- ============================================================

SELECT
    policy_type,
    COUNT(*) AS Expiring_Policies
FROM policy_details
WHERE policy_end_date BETWEEN '2026-01-01' AND '2026-12-31'
GROUP BY policy_type
ORDER BY Expiring_Policies DESC;


-- ============================================================
-- 7. TOTAL PREMIUM BY POLICY START YEAR
-- ============================================================

SELECT
    YEAR(policy_start_date) AS Policy_Start_Year,
    SUM(premium_amount) AS Total_Premium
FROM policy_details
WHERE YEAR(policy_start_date) BETWEEN 2014 AND 2024
GROUP BY YEAR(policy_start_date)
ORDER BY Policy_Start_Year;

-- ============================================================
-- 8. POLICY COUNT BY CLAIM STATUS
-- ============================================================

SELECT
    claim_status,
    COUNT(DISTINCT policy_id) AS Policy_Count
FROM claims
GROUP BY claim_status
ORDER BY Policy_Count DESC;


-- ============================================================
-- 9. POLICY COUNT BY PAYMENT STATUS
-- ============================================================

SELECT
    payment_status,
    COUNT(DISTINCT policy_id) AS Policy_Count
FROM payments
GROUP BY payment_status
ORDER BY Policy_Count DESC;


-- ============================================================
-- 10. TOTAL CLAIM AMOUNT
-- ============================================================

SELECT
    SUM(claim_amount) AS Total_Claim_Amount
FROM claims;
