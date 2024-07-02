-- Create user and database
-- CREATE USER IF NOT EXISTS makanuser WITH PASSWORD '12345qwe';
-- CREATE DATABASE IF NOT EXISTS makan_db;
-- GRANT ALL PRIVILEGES ON DATABASE makan_db TO makanuser;

-- Connect to the new database (this is not a SQL command, should be done in psql)
\connect makan_db;

-- Create tables
CREATE TABLE IF NOT EXISTS customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    active BOOLEAN,
    location VARCHAR(255) NOT NULL
);

CREATE TYPE order_status AS ENUM ('placed', 'preparing', 'ready', 'out_for_delivery', 'delivered', 'canceled');

CREATE TABLE IF NOT EXISTS restaurants (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS orders (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(id),
    restaurant_id INTEGER REFERENCES restaurants(id),
    items JSONB,
    status order_status DEFAULT 'placed',
    total_price NUMERIC(10, 2),
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS drivers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    phone_number VARCHAR(20),
    vehicle_type VARCHAR(50)
);
