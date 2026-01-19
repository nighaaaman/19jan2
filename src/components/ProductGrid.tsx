import { useEffect, useState } from 'react'
import { supabase } from '../lib/supabase'
import ProductCard from './ProductCard'

interface Product {
  id: string
  name: string
  description: string
  price: number
  image_url: string
  stock: number
}

interface ProductGridProps {
  categorySlug: string | null
}

export default function ProductGrid({ categorySlug }: ProductGridProps) {
  const [products, setProducts] = useState<Product[]>([])
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    const fetchProducts = async () => {
      if (!categorySlug) return

      try {
        setLoading(true)
        setError(null)

        const { data: categoryData, error: categoryError } = await supabase
          .from('categories')
          .select('id')
          .eq('slug', categorySlug)
          .single()

        if (categoryError) throw categoryError

        const { data, error } = await supabase
          .from('products')
          .select('*')
          .eq('category_id', categoryData.id)
          .limit(5)

        if (error) throw error
        setProducts(data || [])
      } catch (err) {
        setError(err instanceof Error ? err.message : 'Failed to load products')
      } finally {
        setLoading(false)
      }
    }

    fetchProducts()
  }, [categorySlug])

  if (loading) {
    return (
      <div className="flex justify-center items-center py-20">
        <div className="w-12 h-12 border-4 border-gray-300 border-t-gray-800 rounded-full animate-spin"></div>
      </div>
    )
  }

  if (error) {
    return (
      <div className="text-center py-20">
        <p className="text-red-600">Error: {error}</p>
      </div>
    )
  }

  return (
    <section className="max-w-6xl mx-auto px-4 pb-16">
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-5 gap-6">
        {products.map((product) => (
          <ProductCard key={product.id} product={product} />
        ))}
      </div>

      {products.length === 0 && (
        <div className="text-center py-20">
          <p className="text-gray-600 text-lg">No products available in this category</p>
        </div>
      )}
    </section>
  )
}
