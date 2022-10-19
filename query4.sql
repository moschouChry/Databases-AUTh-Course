# Find the name of the guides that are available  on '2021-02-15'
SELECT DISTINCT guide.Name
FROM guide LEFT OUTER JOIN reservation ON guide.GuideID = reservation.GuideID
WHERE date(reservation.Date) != '2021-02-15' OR reservation.ReservationID IS NULL;
