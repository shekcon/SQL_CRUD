SELECT first_name, last_name, date_of_birth,
row_number() over (ORDER BY date_of_birth) as rank
FROM persons
WHERE job = 'Coach'
ORDER BY last_name;
