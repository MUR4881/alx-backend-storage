-- Create index to optimize search on a database of seven million records

-- Index only the first character
CREATE INDEX idx_name_first ON names (name(1));
