SELECT t.'title'
   FROM 'tv_shows' AS t
         INNER JOIN 'tv_shows_genres' AS s
         ON t.'id' = s.'show_id'

         INNER JOIN 'tv_genres' AS g
         ON g.'id' = s.'genres_id'
         WHERE g.'name'= "Comedy"
   ORDER BY t.'title';
