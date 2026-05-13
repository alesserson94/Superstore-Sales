select
right(transaction_id,6) as transaction_id,transaction_date,
right(customer_id,5) as customer_id,
trim(department) as department,product_sku,
trim(product_name) as product_name,
quantity,unit_price,discount_pct,
round(unit_price*quantity*(1-discount_pct),2) as total_cost,
payment_method,sales_channel,register_id
from transactions
order by transaction_id;