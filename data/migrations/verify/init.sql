-- Verify yoladesign:init on pg

BEGIN;

SELECT id,name,description,price,image_url,stock,created_at,updated_at,category_id,subcategory_id FROM product WHERE false;
SELECT id,name,description,created_at,updated_at,category_id FROM category WHERE false;
SELECT id,name,description,created_at,updated_at,category_id FROM subcategory WHERE false;
SELECT id,username,email,password,created_at,updated_at FROM "user" WHERE false;
SELECT id,username,email,password,created_at,updated_at FROM admin WHERE false;

ROLLBACK;
