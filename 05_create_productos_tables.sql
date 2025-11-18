CREATE TABLE productos_jsonb (
  id SERIAL PRIMARY KEY,
  nombre TEXT,
  especificaciones JSONB
);
