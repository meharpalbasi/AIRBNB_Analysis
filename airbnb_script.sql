SELECT id, listing_url, name, 30 - availability_30 as booked_out_30,
price*(30-availability_30) as projected_monthly_revenue 
FROM listings
ORDER BY projected_monthly_revenue DESC limit 20;


SELECT neighbourhood_cleansed, avg(price * (30 - availability_30)) as average_monthly_revenue
FROM listings
GROUP BY neighbourhood_cleansed
ORDER BY average_monthly_revenue desc;

SELECT neighbourhood_cleansed, avg(price * (30 - availability_30)) as average_monthly_revenue
FROM listings
GROUP BY neighbourhood_cleansed
ORDER average_monthly_revenue desc


SELECT property_type, neighbourhood_cleansed , avg(price * (30-availability_30)) as average_monthly_revenue
FROM listings
GROUP BY property_type, neighbourhood_cleansed
ORDER BY neighbourhood_cleansed asc


SELECT host_id, host_url, host_name, count(*) AS number_of_dirty_reviews FROM reviews
INNER JOIN listings ON reviews.listing_id = listings.id
WHERE comments like '%dirty%'
GROUP BY host_id, host_url, host_name
ORDER BY number_of_dirty_reviews DESC;