SELECT count(*) as max_event
FROM events
    INNER JOIN persons ON persons.id = events.person_id
GROUP BY persons.id
ORDER BY max_event DESC
LIMIT 1
;
