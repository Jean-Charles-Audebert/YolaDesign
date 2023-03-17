-- Revert yoladesign:init from pg

BEGIN;

DROP DOMAIN DOMAIN email_validator;
DROP TABLE product, category, subcategory, "user", admin;

COMMIT;
