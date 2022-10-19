# Find the name, the area name and the length of all routes in 'Katerini'
# Order them with asceding length
SELECT route.Name AS RouteName, route.AreaName, route.Length
FROM route
WHERE route.AreaState = 'Katerini'
ORDER BY route.length ASC;