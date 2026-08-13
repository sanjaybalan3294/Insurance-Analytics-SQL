# 	Quesion 1. Total policy   #
select distinct count(policy_id) from policy_details;
/*____________________________________________________*/

# Quesion 2. #
SELECT COUNT(DISTINCT customer_id) as Total_customer
FROM policy_details;

# Quesion 3. ##################################
SELECT 
    c.age_bucket,
    COUNT(p.policy_id) AS total_policies
FROM customers c
JOIN policy_details p
    ON c.customer_id = p.customer_id
GROUP BY c.age_bucket
ORDER BY c.age_bucket; 

########QUESION 4. ###############################
select 
c.gender,
COUNT(p.policy_id) AS total_policies
FROM customers c
join policy_details p
ON c.customer_id = p. customer_id
group by c.gender
order by c.gender;


# QUESION 5. #########################################

SELECT 
    policy_type,
    COUNT(policy_id) AS total_policies
FROM policy_details
GROUP BY policy_type
ORDER BY total_policies DESC;

# QUESION 6. ##########################################
SELECT policy_type, COUNT(*) AS Expire_policies
FROM policy_details
WHERE policy_end_date 
BETWEEN '2026-01-01' AND '2026-12-31'
GROUP BY policy_type;

# Quesion 7. #########################################
SELECT 
    YEAR(policy_start_date) AS year,
    SUM(premium_amount) AS total_premium
FROM policy_details
GROUP BY YEAR(policy_start_date)
ORDER BY year;

# QUESION 8 . ########################################
SELECT 
    claim_status,
    COUNT(DISTINCT policy_id) AS policy_count
FROM claims
GROUP BY claim_status
ORDER BY policy_count DESC;

# Quesion 9. ############################
SELECT 
    payment_status,
    COUNT(DISTINCT policy_id) AS policy_count
FROM payments
GROUP BY payment_status
ORDER BY policy_count DESC;

#   Quesion 10.#####################
select sum(claim_amount) as Total_claim_amount from claims ;


