# Find the most expensive piece of equipment
SELECT equipment.ProductCode,equipment.Brand , equipment.Type, equipment.Price
FROM equipment 
WHERE equipment.Price = (SELECT MAX(equipment.Price) FROM equipment);