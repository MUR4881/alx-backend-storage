-- Ranks country orgins of bands, ordered by the number of (non-unique) fans
-- Column names must be: origin and nb_fans

-- Import the data storing file / dump file, uncomment following line
-- \. metal_bands.sql

-- Ranks origins by fans
  SELECT origin, SUM(fans)
      AS nb_fans
    FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
