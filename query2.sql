# Find the hikers that have not made any reservations
SELECT hiker.Name
FROM hiker
WHERE NOT EXISTS ( SELECT * FROM reservation WHERE hiker.HikerID = reservation.HikerID);