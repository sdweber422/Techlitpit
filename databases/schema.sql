DROP TABLE IF EXISTS resources;
CREATE TABLE IF NOT EXISTS resources (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL UNIQUE,
  description text,
  image_link VARCHAR(512),
  url VARCHAR(512) UNIQUE
);

DROP TABLE IF EXISTS authors;
CREATE TABLE IF NOT EXISTS authors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS categories;
CREATE TABLE IF NOT EXISTS categories (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS resource_authors;
CREATE TABLE IF NOT EXISTS resource_authors (
  author_id INTEGER,
  resource_id INTEGER,
  PRIMARY KEY(author_id, resource_id)
);

DROP TABLE IF EXISTS resource_categories;
CREATE TABLE IF NOT EXISTS resource_categories (
  category_id INTEGER,
  resource_id INTEGER,
  PRIMARY KEY(category_id, resource_id)
);
