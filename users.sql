# Create hikeAdmin that has full access and privilages in database
# but only from the server of the database
CREATE USER 'hikeAdmin'@'localhost' IDENTIFIED BY 'superpass';
GRANT ALL PRIVILEGES ON hiketheday.* TO 'hikeAdmin'@'localhost';

# Create user employee that can perform 
# select, insert, update and delete on guide, area, route, rating, equipment, sightseeing
# select on hiker
# select, update and delete on reservation
CREATE USER 'employee'@'localhost' IDENTIFIED BY 'myemppassword';
GRANT SELECT, INSERT, UPDATE, DELETE ON hiketheday.guide TO 'employee'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON hiketheday.area TO 'employee'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON hiketheday.route TO 'employee'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON hiketheday.rating TO 'employee'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON hiketheday.equipment TO 'employee'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON hiketheday.sightseeing TO 'employee'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON hiketheday.route_guide TO 'employee'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON hiketheday.route_sights TO 'employee'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON hiketheday.route_equipment TO 'employee'@'localhost';

GRANT SELECT, DELETE, UPDATE ON hiketheday.reservation TO 'employee'@'localhost';
GRANT SELECT ON hiketheday.hiker TO 'employee'@'localhost';

# Create user authenticateduser that can perform 
# select, insert, update and delete on hiker, rating
# select, insert and delete on reservation
# select on area, route, guide, sightseeing, equipment
CREATE USER 'hikeruser'@'localhost' IDENTIFIED BY 'myhikerpassword';
CREATE USER 'hikeruser'@'%' IDENTIFIED BY 'myhikerpassword';
GRANT SELECT, INSERT, UPDATE, DELETE ON hiketheday.hiker TO 'hikeruser'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON hiketheday.hiker TO 'hikeruser'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON hiketheday.rating TO 'hikeruser'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON hiketheday.rating TO 'hikeruser'@'%';
GRANT SELECT, INSERT, DELETE ON hiketheday.reservation TO 'hikeruser'@'localhost';
GRANT SELECT, INSERT, DELETE ON hiketheday.reservation TO 'hikeruser'@'%';

GRANT SELECT ON hiketheday.area TO 'hikeruser'@'localhost';
GRANT SELECT ON hiketheday.area TO 'hikeruser'@'%';
GRANT SELECT ON hiketheday.route TO 'hikeruser'@'localhost';
GRANT SELECT ON hiketheday.route TO 'hikeruser'@'%';
GRANT SELECT ON hiketheday.guide TO 'hikeruser'@'localhost';
GRANT SELECT ON hiketheday.guide TO 'hikeruser'@'%';
GRANT SELECT ON hiketheday.sightseeing TO 'hikeruser'@'localhost';
GRANT SELECT ON hiketheday.sightseeing TO 'hikeruser'@'%';
GRANT SELECT ON hiketheday.equipment TO 'hikeruser'@'localhost';
GRANT SELECT ON hiketheday.equipment TO 'hikeruser'@'%';
GRANT SELECT ON hiketheday.route_equipment TO 'hikeruser'@'localhost';
GRANT SELECT ON hiketheday.route_equipment TO 'hikeruser'@'%';
GRANT SELECT ON hiketheday.route_guide TO 'hikeruser'@'localhost';
GRANT SELECT ON hiketheday.route_guide TO 'hikeruser'@'%';
GRANT SELECT ON hiketheday.route_sights TO 'hikeruser'@'localhost';
GRANT SELECT ON hiketheday.route_sights TO 'hikeruser'@'%';

# Create user guestuser that can perform 
# select on area, route, sightseeing, equipment and rating
CREATE USER 'guestuser'@'localhost';
CREATE USER 'guestuser'@'%';
GRANT SELECT ON hiketheday.area TO 'guestuser'@'localhost';
GRANT SELECT ON hiketheday.area TO 'guestuser'@'%';
GRANT SELECT ON hiketheday.route TO 'guestuser'@'localhost';
GRANT SELECT ON hiketheday.route TO 'guestuser'@'%';
GRANT SELECT ON hiketheday.sightseeing TO 'guestuser'@'localhost';
GRANT SELECT ON hiketheday.sightseeing TO 'guestuser'@'%';
GRANT SELECT ON hiketheday.equipment TO 'guestuser'@'localhost';
GRANT SELECT ON hiketheday.equipment TO 'guestuser'@'%';
GRANT SELECT ON hiketheday.rating TO 'guestuser'@'localhost';
GRANT SELECT ON hiketheday.rating TO 'guestuser'@'%';






