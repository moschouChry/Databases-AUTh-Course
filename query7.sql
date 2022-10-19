# Find the name of all refugees in the route 'Gortsia-Petrostrouga-Muses Plateau'
SELECT hiketheday.c.SightName
FROM hiketheday.c
WHERE hiketheday.c.Type = 'Refugee' AND hiketheday.c.RouteName='Gortsia-Petrostrouga-Muses Plateau';