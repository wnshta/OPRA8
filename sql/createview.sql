CREATE VIEW overall_ratings AS
SELECT ap.apartment_id, CAST(AVG(r.rating) AS DECIMAL(2, 1)) AS avg_rating
FROM apartments ap, rentals r
WHERE ap.apartment_id = r.apartment_id
GROUP BY ap.apartment_id;