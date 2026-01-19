/*
  # Seed sample product data

  1. Insert Categories
    - 5 clothing categories for Eddjos Collections
  
  2. Insert Products
    - 5 products per category (25 total)
    - Include realistic product data for a fashion store in Kenya
*/

INSERT INTO categories (name, slug, description) VALUES
  ('Dresses', 'dresses', 'Beautiful dresses for every occasion'),
  ('Tops', 'tops', 'Stylish tops and blouses'),
  ('Bottoms', 'bottoms', 'Premium skirts and trousers'),
  ('Accessories', 'accessories', 'Elegant bags and jewelry'),
  ('Outerwear', 'outerwear', 'Jackets and cardigans')
ON CONFLICT (name) DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT 
  c.id,
  'Classic Midi Dress',
  'Elegant midi dress perfect for formal events',
  4500,
  'https://images.pexels.com/photos/1055691/pexels-photo-1055691.jpeg?auto=compress&cs=tinysrgb&w=600',
  15
FROM categories c WHERE c.slug = 'dresses'
ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Floral Summer Dress', 'Breathable cotton dress with vibrant prints', 3200, 'https://images.pexels.com/photos/1926769/pexels-photo-1926769.jpeg?auto=compress&cs=tinysrgb&w=600', 20
FROM categories c WHERE c.slug = 'dresses' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Cocktail Evening Dress', 'Stunning dress for evening occasions', 5800, 'https://images.pexels.com/photos/2391320/pexels-photo-2391320.jpeg?auto=compress&cs=tinysrgb&w=600', 8
FROM categories c WHERE c.slug = 'dresses' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Casual Day Dress', 'Comfortable dress for everyday wear', 2800, 'https://images.pexels.com/photos/1055691/pexels-photo-1055691.jpeg?auto=compress&cs=tinysrgb&w=600', 25
FROM categories c WHERE c.slug = 'dresses' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Maxi Dress', 'Long elegant maxi dress with flowing fabric', 4200, 'https://images.pexels.com/photos/2536965/pexels-photo-2536965.jpeg?auto=compress&cs=tinysrgb&w=600', 12
FROM categories c WHERE c.slug = 'dresses' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Silk Blouse', 'Premium silk blouse for professional look', 3500, 'https://images.pexels.com/photos/914668/pexels-photo-914668.jpeg?auto=compress&cs=tinysrgb&w=600', 18
FROM categories c WHERE c.slug = 'tops' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Casual T-shirt', 'Comfortable cotton t-shirt in various colors', 1200, 'https://images.pexels.com/photos/3622613/pexels-photo-3622613.jpeg?auto=compress&cs=tinysrgb&w=600', 40
FROM categories c WHERE c.slug = 'tops' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Linen Shirt', 'Breathable linen shirt perfect for warm weather', 2600, 'https://images.pexels.com/photos/3649308/pexels-photo-3649308.jpeg?auto=compress&cs=tinysrgb&w=600', 22
FROM categories c WHERE c.slug = 'tops' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Crop Top', 'Trendy crop top for casual outfits', 1800, 'https://images.pexels.com/photos/3490360/pexels-photo-3490360.jpeg?auto=compress&cs=tinysrgb&w=600', 30
FROM categories c WHERE c.slug = 'tops' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Sweater', 'Cozy knit sweater for layering', 2900, 'https://images.pexels.com/photos/3702507/pexels-photo-3702507.jpeg?auto=compress&cs=tinysrgb&w=600', 16
FROM categories c WHERE c.slug = 'tops' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Tailored Trousers', 'Classic tailored trousers for professional wear', 3800, 'https://images.pexels.com/photos/1055691/pexels-photo-1055691.jpeg?auto=compress&cs=tinysrgb&w=600', 14
FROM categories c WHERE c.slug = 'bottoms' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Denim Jeans', 'High-quality denim jeans in classic blue', 2500, 'https://images.pexels.com/photos/3622613/pexels-photo-3622613.jpeg?auto=compress&cs=tinysrgb&w=600', 35
FROM categories c WHERE c.slug = 'bottoms' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Linen Trousers', 'Breathable linen trousers for comfort', 2400, 'https://images.pexels.com/photos/914668/pexels-photo-914668.jpeg?auto=compress&cs=tinysrgb&w=600', 19
FROM categories c WHERE c.slug = 'bottoms' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Skirt Midi', 'Elegant midi skirt with waist detail', 2200, 'https://images.pexels.com/photos/2536965/pexels-photo-2536965.jpeg?auto=compress&cs=tinysrgb&w=600', 24
FROM categories c WHERE c.slug = 'bottoms' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Leggings', 'Comfortable stretchy leggings for everyday wear', 1600, 'https://images.pexels.com/photos/3490360/pexels-photo-3490360.jpeg?auto=compress&cs=tinysrgb&w=600', 28
FROM categories c WHERE c.slug = 'bottoms' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Designer Handbag', 'Premium leather handbag with elegant design', 6500, 'https://images.pexels.com/photos/1055691/pexels-photo-1055691.jpeg?auto=compress&cs=tinysrgb&w=600', 10
FROM categories c WHERE c.slug = 'accessories' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Statement Earrings', 'Bold statement earrings to elevate any look', 1400, 'https://images.pexels.com/photos/3622613/pexels-photo-3622613.jpeg?auto=compress&cs=tinysrgb&w=600', 32
FROM categories c WHERE c.slug = 'accessories' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Elegant Necklace', 'Timeless necklace with delicate pendant', 2100, 'https://images.pexels.com/photos/914668/pexels-photo-914668.jpeg?auto=compress&cs=tinysrgb&w=600', 21
FROM categories c WHERE c.slug = 'accessories' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Leather Belt', 'Quality leather belt perfect with any outfit', 1500, 'https://images.pexels.com/photos/2536965/pexels-photo-2536965.jpeg?auto=compress&cs=tinysrgb&w=600', 27
FROM categories c WHERE c.slug = 'accessories' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Silk Scarf', 'Luxurious silk scarf with beautiful patterns', 1800, 'https://images.pexels.com/photos/3490360/pexels-photo-3490360.jpeg?auto=compress&cs=tinysrgb&w=600', 26
FROM categories c WHERE c.slug = 'accessories' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Wool Cardigan', 'Warm wool cardigan for layering', 3200, 'https://images.pexels.com/photos/1055691/pexels-photo-1055691.jpeg?auto=compress&cs=tinysrgb&w=600', 13
FROM categories c WHERE c.slug = 'outerwear' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Denim Jacket', 'Classic denim jacket for casual style', 2800, 'https://images.pexels.com/photos/3622613/pexels-photo-3622613.jpeg?auto=compress&cs=tinysrgb&w=600', 17
FROM categories c WHERE c.slug = 'outerwear' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Leather Jacket', 'Premium leather jacket with sophisticated style', 7200, 'https://images.pexels.com/photos/914668/pexels-photo-914668.jpeg?auto=compress&cs=tinysrgb&w=600', 6
FROM categories c WHERE c.slug = 'outerwear' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Blazer', 'Tailored blazer perfect for professional wear', 4500, 'https://images.pexels.com/photos/2536965/pexels-photo-2536965.jpeg?auto=compress&cs=tinysrgb&w=600', 11
FROM categories c WHERE c.slug = 'outerwear' ON CONFLICT DO NOTHING;

INSERT INTO products (category_id, name, description, price, image_url, stock) 
SELECT c.id, 'Puffer Jacket', 'Warm puffer jacket for cold weather', 5800, 'https://images.pexels.com/photos/3490360/pexels-photo-3490360.jpeg?auto=compress&cs=tinysrgb&w=600', 9
FROM categories c WHERE c.slug = 'outerwear' ON CONFLICT DO NOTHING;
