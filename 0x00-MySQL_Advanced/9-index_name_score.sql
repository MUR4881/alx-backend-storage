-- Optimize, search with 2 indexes

-- The index is only created with the first letter of name, and the score
CREATE INDEX idx_name_first_score ON names (name(1), score);
