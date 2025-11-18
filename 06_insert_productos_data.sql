
INSERT INTO productos_jsonb (nombre, especificaciones)
VALUES 
  ('Laptop Gaming', '{"marca": "ASUS", "color": "negro", "ram": "16GB", "almacenamiento": "1TB SSD"}'),
  ('Smartphone', '{"marca": "Samsung", "color": "azul", "almacenamiento": "128GB", "pantalla": "6.1"}'),
  ('Tablet', '{"marca": "Apple", "color": "plateado", "almacenamiento": "256GB", "conectividad": "WiFi"}'),
  ('Monitor', '{"marca": "LG", "color": "negro", "tamaño": "27", "resolucion": "4K"}'),
  ('Teclado', '{"marca": "Logitech", "color": "blanco", "inalambrico": true, "mecanico": false}');


INSERT INTO productos_hstore (nombre, atributos)
VALUES 
  ('Laptop', 'marca=>Dell, color=>negro, ram=>16GB, peso=>2.5kg'),
  ('Teléfono', 'marca=>Samsung, color=>azul, ram=>8GB, peso=>0.2kg'),
  ('Tablet', 'marca=>Apple, color=>plateado, almacenamiento=>64GB, peso=>0.5kg'),
  ('Monitor', 'marca=>LG, color=>negro, tamaño=>27, resolucion=>4K'),
  ('Mouse', 'marca=>Logitech, color=>blanco, inalambrico=>si, peso=>0.1kg');
