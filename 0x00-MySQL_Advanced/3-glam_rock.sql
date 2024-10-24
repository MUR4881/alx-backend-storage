-- Lists all bands with Glam rock as their main style, ranked by their longevity
-- in years until 2022

-- Remove the two, hyphens below to test
-- \. metal_bands.sql

SELECT band_name, IFNULL(split, 2022) - formed AS lifespan
  FROM metal_bands
 WHERE (split <= 2022 OR split IS NULL)
   AND style LIKE "%Glam rock%";
