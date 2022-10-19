# Find all equipment pieces for the routes that hiker with id = 2 has made a reservation
# Order them with ascending price
SELECT  hiketheday.a.RouteName AS RouteName,equipment.Brand, equipment.ProductCode, equipment.Type,equipment.Price
FROM equipment 
JOIN route_equipment ON equipment.ProductCode = route_equipment.ProductCode AND equipment.Brand = route_equipment.Brand
JOIN hiketheday.a ON route_equipment.RouteName = hiketheday.a.RouteName
WHERE hiketheday.a.HikerID = '2'
ORDER BY equipment.Price ASC;
