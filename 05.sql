DELETE FROM persons
WHERE id NOT IN (SELECT person_id FROM events);
