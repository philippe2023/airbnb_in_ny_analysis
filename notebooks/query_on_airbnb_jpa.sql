USE airbnb_in_ny;

-- analyze the distribution of stays with a maximum of 10 nights
SELECT MinimumNights, COUNT(*) AS CountOfStays
FROM airbnb_in_ny.listing
WHERE MinimumNights <= 10
GROUP BY MinimumNights
ORDER BY MinimumNights;

-- analyze the distribution of prices up to $300
SELECT Price, COUNT(*) AS CountOfPrices
FROM airbnb_in_ny.listing
WHERE Price <= 300
GROUP BY Price
ORDER BY Price;

-- Correlation analysis between prices and length of stay
SELECT MinimumNights, AVG(Price) AS AveragePrice, COUNT(*) AS NumberOfStays
FROM airbnb_in_ny.listing
WHERE MinimumNights <= 20 AND Price <= 1000
GROUP BY MinimumNights
ORDER BY MinimumNights;

-- get a summary of prices (min, max, and avg)
SELECT MIN(Price) AS MinPrice, MAX(Price) AS MaxPrice, AVG(Price) AS AveragePrice, COUNT(Price) AS TotalListings
FROM airbnb_in_ny.listing
WHERE Price <= 2000;


