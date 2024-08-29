SELECT NumberOfReviews, AVG(Price) AS average_price
FROM airbnb_in_ny.listing
GROUP BY NumberOfReviews
ORDER BY average_price DESC;

SELECT RoomType, AVG(Price) AS average_price
FROM airbnb_in_ny.listing
GROUP BY RoomType
ORDER BY average_price DESC;#


-- Analyzing Price by Number of Reviews
SELECT NumberOfReviews, AVG(Price) AS average_price
FROM airbnb_in_ny.listing
GROUP BY NumberOfReviews
ORDER BY average_price DESC;

-- Analyzing Price by Number of Reviews
SELECT NumberOfReviews, AVG(Price) AS average_price
FROM airbnb_in_ny.listing
GROUP BY NumberOfReviews
ORDER BY average_price DESC;

-- Combine Factors Using Multiple Criteria
SELECT Neighbourhood, RoomType, AVG(Price) AS average_price
FROM airbnb_in_ny.listing
GROUP BY Neighbourhood, RoomType
ORDER BY average_price DESC;