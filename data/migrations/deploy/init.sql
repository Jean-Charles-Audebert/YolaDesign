-- Deploy yoladesign:init to pg

BEGIN;


CREATE DOMAIN email_validator AS text CHECK (
    value ~ '^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$'
);

CREATE TABLE category (
  id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE subcategory (
  id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  category_id INT NOT NULL,
  CONSTRAINT subcategory_category_fk FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE TABLE product (
  id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  price NUMERIC(10, 2) NOT NULL,
  image_url VARCHAR(255),
  stock INT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  category_id INT NOT NULL,
  subcategory_id INT NOT NULL,
  CONSTRAINT product_category_fk FOREIGN KEY (category_id) REFERENCES category(id),
  CONSTRAINT product_subcategory_fk FOREIGN KEY (subcategory_id) REFERENCES subcategory(id)
);

CREATE TABLE "user" (
  id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  email email_validator UNIQUE NOT NULL,
  password TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  is_admin BOOLEAN DEFAULT FALSE
);

CREATE TABLE admin (
  id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  email email_validator UNIQUE NOT NULL,
  password TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

COMMIT;