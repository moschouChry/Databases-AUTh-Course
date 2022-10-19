# Find all ratings for the route 'Muses Plateau - Stefani'
# Order them with descending stars
SELECT rating.Comment, rating.Stars
FROM rating
WHERE rating.RouteName = 'Muses Plateau - Stefani'
ORDER BY rating.Stars DESC;