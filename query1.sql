# Find the ID, the Name and the Date of all reservations that are scheduled after '2020-12-05'
SELECT reservation.ReservationID, reservation.Date, reservation.RouteName
FROM reservation
WHERE date(Date) > "2020-12-05";