#Question 5 - Required Queries- for each query describe in simple English intended goal
#(e) Views

CREATE VIEW FacilitiesByState AS
SELECT State, COUNT(*) AS FacilityCount
FROM locations
GROUP BY State;
-- This view calculates the count of facilities in each state from the "locations" table by grouping the results by the State column.

CREATE VIEW FacilityLocations AS
SELECT FacilityName, City, State
FROM locations
WHERE City IN ('San Andreas', 'Arcata', 'Bishop');
-- This view selects facilities located in specific cities by filtering the "locations" table for records
--  where the City column matches any of the specified cities ('San Andreas', 'Arcata', 'Bishop').

CREATE VIEW SpecificCityFacilities AS
SELECT FacilityName, City, State, ZipCode
FROM locations;
-- This view retrieves facility locations with their corresponding zip codes from the "locations" table,
--  selecting the FacilityName, City, State, and ZipCode columns.


