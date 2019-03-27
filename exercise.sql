-- SELECT u.id_miembro, u.nombre, p.titulo, a.fecha_alquiler, a.fecha_devolucion
-- FROM pelicula as p
-- INNER JOIN casete as c on c.id_pelicula = p.id_pelicula
-- INNER JOIN alquiler as a on a.id_casete = c.id_casete
-- INNER JOIN miembros as u on u.id_miembro = a.id_miembro
-- WHERE p.id_pelicula = 50
-- ORDER BY a.fecha_alquiler DESC;

-- 1 Cuál es la película más popular por semana, mes y año?
SELECT p.id_pelicula, p.titulo, COUNT(*) as pedidas
FROM alquiler as a
INNER JOIN casete as c ON c.id_casete = a.id_casete
INNER JOIN pelicula as p ON p.id_pelicula = c.id_pelicula
WHERE a.fecha_alquiler > (CURRENT_DATE - 7)
GROUP BY p.id_pelicula
ORDER BY pedidas DESC
LIMIT 1;

SELECT p.id_pelicula, p.titulo, COUNT(*) as pedidas
FROM alquiler as a
INNER JOIN casete as c ON c.id_casete = a.id_casete
INNER JOIN pelicula as p ON p.id_pelicula = c.id_pelicula
WHERE a.fecha_alquiler > (CURRENT_DATE - 30)
GROUP BY p.id_pelicula
ORDER BY pedidas DESC
LIMIT 1;

SELECT p.id_pelicula, p.titulo, COUNT(*) as pedidas
FROM alquiler as a
INNER JOIN casete as c ON c.id_casete = a.id_casete
INNER JOIN pelicula as p ON p.id_pelicula = c.id_pelicula
WHERE a.fecha_alquiler > (CURRENT_DATE - 365)
GROUP BY p.id_pelicula
ORDER BY pedidas DESC
LIMIT 1;

-- 2 Cuáles son las 5 películas menos populares?
SELECT p.id_pelicula, p.titulo, COUNT(*) as pedidas
FROM alquiler as a
INNER JOIN casete as c ON c.id_casete = a.id_casete
INNER JOIN pelicula as p ON p.id_pelicula = c.id_pelicula
GROUP BY p.id_pelicula
ORDER BY pedidas DESC
LIMIT 1;

-- 3 Cuál actor aparece en más películas?
SELECT a.id_actor,a.nombre, COUNT(a.id_actor) AS apariciones
FROM actor AS a
INNER JOIN reparto AS r ON a.id_actor = r.id_actor
INNER JOIN pelicula AS p ON r.id_pelicula = p.id_pelicula
GROUP BY a.id_actor 
ORDER BY apariciones DESC
LIMIT 1;

-- 4 Cuál es la categoría de películas más solicitada?
SELECT p.categoria, COUNT(*) as pedidas
FROM alquiler as a
INNER JOIN casete as c ON c.id_casete = a.id_casete
INNER JOIN pelicula as p ON p.id_pelicula = c.id_pelicula
GROUP BY p.categoria
ORDER BY pedidas DESC
LIMIT 1;

-- 5 Cuál es el usuario que ha alquilado más películas? Cuál menos?
SELECT u.id_miembro, u.nombre, COUNT(*) as alquiladas
FROM alquiler as a
INNER JOIN miembros as u ON u.id_miembro = a.id_miembro
GROUP BY u.id_miembro
ORDER BY alquiladas DESC
LIMIT 1;

SELECT u.id_miembro, u.nombre, COUNT(*) as alquiladas
FROM alquiler as a
INNER JOIN miembros as u ON u.id_miembro = a.id_miembro
GROUP BY u.id_miembro
ORDER BY alquiladas ASC
LIMIT 1;