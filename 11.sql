SELECT date_of_birth, 'Birth of ' || first_name
FROM persons
WHERE date_of_birth IS NOT NULL
UNION
SELECT start_at, 'Start of ' || id::text
FROM matches
WHERE start_at IS NOT NULL
ORDER BY date_of_birth
;
