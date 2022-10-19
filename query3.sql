# Find the Brand, the ProductCode and the Price of all equipment pieces that are suitable 
# for level 3 Difficulty routes and are clothes
SELECT hiketheday.d.Brand, hiketheday.d.ProductCode, hiketheday.d.Price
FROM hiketheday.d
WHERE hiketheday.d.Type = 'Clothes' AND hiketheday.d.Difficulty = '3'
ORDER BY hiketheday.d.Price ASC;