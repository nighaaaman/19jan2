import { useState } from 'react'
import { ShoppingBag } from 'lucide-react'

interface Product {
  id: string
  name: string
  description: string
  price: number
  image_url: string
  stock: number
}

interface ProductCardProps {
  product: Product
}

export default function ProductCard({ product }: ProductCardProps) {
  const [isHovered, setIsHovered] = useState(false)

  return (
    <div
      className="glossy-shine glass-effect glass-border group cursor-pointer transition-all duration-500 overflow-hidden h-full hover:shadow-2xl hover:scale-105"
      onMouseEnter={() => setIsHovered(true)}
      onMouseLeave={() => setIsHovered(false)}
    >
      <div className="relative overflow-hidden h-64 bg-gradient-to-br from-gray-100 to-gray-50">
        <img
          src={product.image_url}
          alt={product.name}
          className={`w-full h-full object-cover transition-transform duration-500 ${
            isHovered ? 'scale-110' : 'scale-100'
          }`}
          onError={(e) => {
            const img = e.target as HTMLImageElement
            img.src = 'https://images.pexels.com/photos/1055691/pexels-photo-1055691.jpeg'
          }}
        />
        <div className="absolute inset-0 bg-gradient-to-t from-black/40 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300" />
      </div>

      <div className="p-6 flex flex-col gap-4">
        <div>
          <h3 className="text-lg font-bold text-gray-900 line-clamp-2 group-hover:text-gray-800 transition-colors">
            {product.name}
          </h3>
          <p className="text-sm text-gray-600 mt-2 line-clamp-2 group-hover:text-gray-700 transition-colors">
            {product.description}
          </p>
        </div>

        <div className="flex items-end justify-between mt-auto pt-4 border-t border-white/20">
          <div>
            <p className="text-xs text-gray-500 uppercase tracking-wider">Price</p>
            <p className="text-2xl font-bold text-gray-900">KES {product.price.toLocaleString()}</p>
          </div>
          <button
            className={`p-3 rounded-full transition-all duration-300 ${
              isHovered
                ? 'bg-gray-900 text-white scale-110'
                : 'bg-gray-200/50 text-gray-700 hover:bg-gray-300/50'
            }`}
            title="Add to cart"
          >
            <ShoppingBag size={20} />
          </button>
        </div>

        {product.stock < 5 && product.stock > 0 && (
          <p className="text-xs font-semibold text-orange-600 bg-orange-50/80 rounded-full px-3 py-1 inline-block">
            Only {product.stock} left in stock
          </p>
        )}
        {product.stock === 0 && (
          <p className="text-xs font-semibold text-red-600 bg-red-50/80 rounded-full px-3 py-1 inline-block">
            Out of Stock
          </p>
        )}
      </div>
    </div>
  )
}
