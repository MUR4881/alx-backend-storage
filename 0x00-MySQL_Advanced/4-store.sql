-- Create a triger, to update a table in respond to another

-- Decreases the quantity of an item after adding a new order

CREATE TRIGGER reflect
AFTER
INSERT ON orders
   FOR EACH ROW
UPDATE items
   SET quantity = quantity - NEW.number
 WHERE  name = NEW.item_name;
