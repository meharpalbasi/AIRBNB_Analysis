select id, listing_url, name, 30-availability_30 as booked_out_30, price*(30-availability_30) as projected_monthly_revenue
FROM listings
ORDER BY projected_monthly_revenue desc limit 20;