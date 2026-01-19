export interface Category {
  id: string
  name: string
  slug: string
  description: string
  created_at: string
}

export interface Product {
  id: string
  category_id: string
  name: string
  description: string
  price: number
  image_url: string
  stock: number
  created_at: string
}
