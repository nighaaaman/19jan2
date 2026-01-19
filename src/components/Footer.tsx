export default function Footer() {
  return (
    <footer className="glass-effect glass-border mx-4 mt-12 mb-4 py-8 px-6 md:px-12">
      <div className="max-w-6xl mx-auto">
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8 mb-8">
          <div>
            <h3 className="font-bold text-gray-900 mb-4">About Us</h3>
            <p className="text-gray-700 text-sm">Eddjos Collections brings premium fashion to Kenya with carefully curated styles for every occasion.</p>
          </div>
          <div>
            <h3 className="font-bold text-gray-900 mb-4">Quick Links</h3>
            <ul className="space-y-2 text-sm text-gray-700">
              <li><a href="#" className="hover:text-gray-900 transition">Shop</a></li>
              <li><a href="#" className="hover:text-gray-900 transition">About</a></li>
              <li><a href="#" className="hover:text-gray-900 transition">Contact</a></li>
            </ul>
          </div>
          <div>
            <h3 className="font-bold text-gray-900 mb-4">Contact</h3>
            <p className="text-gray-700 text-sm">Email: info@eddjos.ke</p>
            <p className="text-gray-700 text-sm">Phone: +254 (0) 123 456 789</p>
          </div>
        </div>
        <div className="border-t border-white/20 pt-8 text-center text-gray-700 text-sm">
          <p>&copy; 2024 Eddjos Collections. All rights reserved.</p>
        </div>
      </div>
    </footer>
  )
}
