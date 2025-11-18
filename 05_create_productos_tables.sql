
CREATE TABLE IF NOT EXISTS productos_jsonb (
  id SERIAL PRIMARY KEY,
  nombre TEXT,
  especificaciones JSONB
);


CREATE EXTENSION IF NOT EXISTS hstore;

CREATE TABLE IF NOT EXISTS productos_hstore (
  id SERIAL PRIMARY KEY,
  nombre TEXT,
  atributos HSTORE
);
