/*
  # Create products database schema

  1. New Tables
    - `categories`
      - `id` (uuid, primary key)
      - `name` (text, unique)
      - `slug` (text, unique)
      - `description` (text)
      - `created_at` (timestamp)
    - `products`
      - `id` (uuid, primary key)
      - `category_id` (uuid, foreign key)
      - `name` (text)
      - `description` (text)
      - `price` (numeric)
      - `image_url` (text)
      - `stock` (integer)
      - `created_at` (timestamp)
  
  2. Security
    - Enable RLS on both tables
    - Add policy for public read access to categories
    - Add policy for public read access to products
*/

CREATE TABLE IF NOT EXISTS categories (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text UNIQUE NOT NULL,
  slug text UNIQUE NOT NULL,
  description text,
  created_at timestamptz DEFAULT now()
);

CREATE TABLE IF NOT EXISTS products (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  category_id uuid NOT NULL REFERENCES categories(id) ON DELETE CASCADE,
  name text NOT NULL,
  description text,
  price numeric(10, 2) NOT NULL,
  image_url text NOT NULL,
  stock integer DEFAULT 0,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE products ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Categories are publicly readable"
  ON categories
  FOR SELECT
  TO public
  USING (true);

CREATE POLICY "Products are publicly readable"
  ON products
  FOR SELECT
  TO public
  USING (true);

CREATE INDEX IF NOT EXISTS idx_products_category_id ON products(category_id);
