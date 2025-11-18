import psycopg2
import pytest

DB_CONFIG = {
    "dbname": "test_db",
    "user": "postgres",
    "password": "postgres",
    "host": "localhost",
    "port": 5432
}

def run_query(query):
    with psycopg2.connect(**DB_CONFIG) as conn:
        with conn.cursor() as cur:
            cur.execute(query)
            return cur.fetchall()

def test_productos_jsonb_count():
    result = run_query("SELECT COUNT(*) FROM productos_jsonb;")
    assert result[0][0] >= 5

def test_productos_negro_jsonb():
    result = run_query("SELECT COUNT(*) FROM productos_jsonb WHERE especificaciones->>'color' = 'negro';")
    assert result[0][0] > 0

def test_productos_hstore_count():
    result = run_query("SELECT COUNT(*) FROM productos_hstore;")
    assert result[0][0] >= 5

def test_productos_negro_hstore():
    result = run_query("SELECT COUNT(*) FROM productos_hstore WHERE atributos -> 'color' = 'negro';")
    assert result[0][0] > 0
