import { useEffect, useState } from 'react'
import { supabase } from './lib/supabase'
import Header from './components/Header'
import CategoryNav from './components/CategoryNav'
import ProductGrid from './components/ProductGrid'
import Footer from './components/Footer'

interface Category {
  id: string
  name: string
  slug: string
  description: string
}

export default function App() {
  const [categories, setCategories] = useState<Category[]>([])
  const [selectedCategory, setSelectedCategory] = useState<string | null>(null)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    const fetchCategories = async () => {
      try {
        setLoading(true)
        const { data, error } = await supabase
          .from('categories')
          .select('*')
          .order('created_at', { ascending: true })

        if (error) throw error
        setCategories(data || [])
        if (data && data.length > 0) {
          setSelectedCategory(data[0].slug)
        }
      } catch (err) {
        setError(err instanceof Error ? err.message : 'Failed to load categories')
      } finally {
        setLoading(false)
      }
    }

    fetchCategories()
  }, [])

  return (
    <div className="min-h-screen flex flex-col">
      <Header />
      <main className="flex-1">
        {loading && (
          <div className="flex items-center justify-center py-20">
            <div className="text-center">
              <div className="w-12 h-12 border-4 border-gray-300 border-t-gray-800 rounded-full animate-spin mx-auto mb-4"></div>
              <p className="text-gray-600">Loading collections...</p>
            </div>
          </div>
        )}
        {error && (
          <div className="text-center py-20">
            <p className="text-red-600">Error: {error}</p>
          </div>
        )}
        {!loading && categories.length > 0 && (
          <>
            <CategoryNav
              categories={categories}
              selectedCategory={selectedCategory}
              onSelectCategory={setSelectedCategory}
            />
            <ProductGrid categorySlug={selectedCategory} />
          </>
        )}
      </main>
      <Footer />
    </div>
  )
}
