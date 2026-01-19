interface Category {
  id: string
  name: string
  slug: string
}

interface CategoryNavProps {
  categories: Category[]
  selectedCategory: string | null
  onSelectCategory: (slug: string) => void
}

export default function CategoryNav({ categories, selectedCategory, onSelectCategory }: CategoryNavProps) {
  return (
    <nav className="max-w-6xl mx-auto px-4 mb-12">
      <div className="flex flex-wrap gap-3 justify-center">
        {categories.map((category) => (
          <button
            key={category.id}
            onClick={() => onSelectCategory(category.slug)}
            className={`px-6 py-3 rounded-full font-semibold transition-all duration-300 ${
              selectedCategory === category.slug
                ? 'glass-effect glass-border text-gray-900 shadow-lg scale-105'
                : 'bg-white/10 border border-white/20 text-gray-700 hover:bg-white/20 hover:scale-105'
            }`}
          >
            {category.name}
          </button>
        ))}
      </div>
    </nav>
  )
}
