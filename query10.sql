# Find the average rating for all the routes that have been rated
SELECT AVG(rating.Stars) AS Stars , rating.RouteName
FROM rating
group by rating.RouteName
ORDER BY AVG(rating.Stars)  DESC;