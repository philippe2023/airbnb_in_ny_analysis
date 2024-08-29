-- Create the Database
CREATE DATABASE IF NOT EXISTS airbnb_in_ny;

USE airbnb_in_ny;

-- Table 1: Host Table
CREATE TABLE airbnb_in_ny.host (
    HostID INT PRIMARY KEY,
    HostName VARCHAR(255),
    CalculatedHostRating DECIMAL(3,2),
    NumberOfReviews INT
);

-- Table 2: Listing Table
CREATE TABLE airbnb_in_ny.listing (
    ListingID INT PRIMARY KEY,
    HostID INT,
    Latitude DECIMAL(9,6),
    Longitude DECIMAL(9,6),
    NeighbourhoodGroup VARCHAR(255),
    Neighbourhood VARCHAR(255),
    RoomType VARCHAR(255),
    Price DECIMAL(10,2),
    MinimumNights INT,
    NumberOfReviews INT,
    LastReview DATE,
    ReviewsPerMonth DECIMAL(4,2),
    CalculatedListingRating DECIMAL(3,2),
    FOREIGN KEY (HostID) REFERENCES Host(HostID)
);

