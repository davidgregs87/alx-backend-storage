-- Buy buy buy
-- A script that creates a trigger that decreases the quantity of an item after adding a new order.
CREATE TRIGGER order_trigger
AFTER INSERT ON orders
FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.NUMBER
WHERE name = NEW.item_name;
