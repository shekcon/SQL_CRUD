SELECT s1.name, (max(s2.capacity) = s1.capacity) as biggest_of_the_city
FROM stadiums s1 CROSS JOIN stadiums s2
WHERE s1.city = s2.city
GROUP BY s1.name, s1.capacity
ORDER BY s1.name
;
