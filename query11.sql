# Find the name(s) of the top commenter (the most comments)
SELECT hiketheday.e.Name, hiketheday.e.TotalComments
FROM hiketheday.e
WHERE hiketheday.e.TotalComments = (SELECT MAX(hiketheday.e.TotalComments) FROM hiketheday.e);