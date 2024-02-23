SELECT movies.title FROM people
JOIN stars ON stars.person_id = people.id
JOIN movies ON stars.movie_id = movies.id
WHERE people.name = 'Bradley Cooper'AND movies.title IN
(
    SELECT movies.title FROM people
    JOIN stars ON stars.person_id = people.id
    JOIN movies ON stars.movie_id = movies.id
    WHERE name = 'Jennifer Lawrence'
);