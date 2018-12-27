INSERT INTO persons(first_name, last_name, job, date_of_birth)
VALUES
    ('Mathieu', 'Mahé', 'Supporter', (SELECT max(date_of_birth) FROM persons)),
    ('Laurie', 'Mezard', 'Supporter', (SELECT min(date_of_birth) FROM persons
                                       WHERE date_of_birth IS NOT NULL));
