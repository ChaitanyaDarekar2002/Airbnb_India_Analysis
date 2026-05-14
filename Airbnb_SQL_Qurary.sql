update Airbnb_India_Top_500
set stars=(
	select AVG (stars)
	from Airbnb_India_Top_500
	where stars is not null
)
where stars is null;

select COUNT(*) as Total_Listings from Airbnb_India_Top_500

select AVG(pricing_rate_amount) as Average_Price from Airbnb_India_Top_500

select top 10 address,pricing_rate_amount,roomType from Airbnb_India_Top_500 order by pricing_rate_amount desc

SELECT roomType,ROUND(AVG(stars),2) AS Avg_Rating
FROM Airbnb_India_Top_500
GROUP BY roomType
ORDER BY Avg_Rating DESC;

select top 10 roomType,ROUND(AVG(pricing_rate_amount),2) as avg_Price
from Airbnb_India_Top_500
group by roomType
order by avg_Price desc

select isHostedBySuperhost,
ROUND(AVG(pricing_rate_amount),2) as avg_Price,
ROUND(AVG(stars),2) as avg_Rating
from Airbnb_India_Top_500
group by isHostedBySuperhost
order by avg_Price,avg_Rating desc

select numberOfGuests,
round(avg(pricing_rate_amount),2) as avg_Price
from Airbnb_India_Top_500
group by numberOfGuests
order by numberOfGuests

select address,pricing_rate_amount,stars from Airbnb_India_Top_500 where pricing_rate_amount> 20000

SELECT
CASE
    WHEN stars >= 4.5 THEN 'Excellent'
    WHEN stars >= 4 THEN 'Good'
    WHEN stars >= 3 THEN 'Average'
    ELSE 'Poor'
END AS Rating_Category,
COUNT(*) AS Total
FROM Airbnb_India_Top_500
GROUP BY
CASE
    WHEN stars >= 4.5 THEN 'Excellent'
    WHEN stars >= 4 THEN 'Good'
    WHEN stars >= 3 THEN 'Average'
    ELSE 'Poor'
END;