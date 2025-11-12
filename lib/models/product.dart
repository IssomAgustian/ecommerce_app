class Product {
  final String id;
  final String name;
  final String image;
  final double price;
  final double rating;
  final int reviewCount;
  final bool isAvailable;
  final String description;
  final List<String> colors;
  final List<int> sizes;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
    required this.reviewCount,
    this.isAvailable = true,
    required this.description,
    required this.colors,
    required this.sizes,
  });
}

// Data dummy produk
final List<Product> dummyProducts = [
  Product(
    id: '1',
    name: 'Nike Air Max 270 React',
    image: 'assets/images/produk1.jpg',
    price: 1899000,
    rating: 4.5,
    reviewCount: 12,
    description: 'Nike Air Max 270 React menggabungkan kenyamanan legendaris Air Max dengan desain yang stylish dan modern. Sepatu ini dilengkapi dengan unit Air Max 270 di bagian tumit yang memberikan kenyamanan maksimal sepanjang hari. Cocok untuk aktivitas sehari-hari maupun olahraga ringan.',
    colors: ['Putih/Hitam', 'Hitam/Merah', 'Abu-abu/Biru'],
    sizes: [38, 40, 41, 42, 43, 44, 45],
  ),
  Product(
    id: '2',
    name: 'Converse Chuck Taylor All Star',
    image: 'assets/images/produk2.jpg',
    price: 799000,
    rating: 4.8,
    reviewCount: 45,
    description: 'Converse Chuck Taylor All Star adalah sepatu klasik yang tidak lekang oleh waktu. Dengan desain ikonik dan kenyamanan yang telah terbukti selama puluhan tahun.',
    colors: ['Merah', 'Putih', 'Hitam'],
    sizes: [38, 40, 41, 42, 43, 44],
  ),
  Product(
    id: '3',
    name: 'New Balance 574 Core',
    image: 'assets/images/produk3.jpg',
    price: 1299000,
    rating: 4.6,
    reviewCount: 28,
    description: 'New Balance 574 Core menawarkan kenyamanan dan gaya yang sempurna untuk penggunaan sehari-hari.',
    colors: ['Abu-abu', 'Navy', 'Hitam'],
    sizes: [39, 40, 41, 42, 43, 44, 45],
  ),
  Product(
    id: '4',
    name: 'Vans Old Skool Classic',
    image: 'assets/images/produk4.jpg',
    price: 899000,
    rating: 4.7,
    reviewCount: 67,
    description: 'Vans Old Skool Classic dengan stripe ikonik yang mudah dikenali. Sepatu skateboard klasik yang nyaman dan stylish.',
    colors: ['Hitam/Putih', 'Navy', 'Merah'],
    sizes: [38, 39, 40, 41, 42, 43, 44],
  ),
  Product(
    id: '5',
    name: 'Adidas Ultraboost 22',
    image: 'assets/images/produk5.jpg',
    price: 2499000,
    rating: 4.9,
    reviewCount: 89,
    description: 'Adidas Ultraboost 22 dengan teknologi Boost yang memberikan energi return maksimal di setiap langkah.',
    colors: ['Putih', 'Hitam', 'Abu-abu'],
    sizes: [39, 40, 41, 42, 43, 44, 45, 46],
  ),
  Product(
    id: '6',
    name: 'Puma RS-X³',
    image: 'assets/images/produk6.jpg',
    price: 1599000,
    rating: 4.4,
    reviewCount: 34,
    description: 'Puma RS-X³ dengan desain chunky yang sedang tren. Kombinasi retro dan modern yang sempurna.',
    colors: ['Putih/Biru', 'Hitam/Merah', 'Abu-abu'],
    sizes: [38, 39, 40, 41, 42, 43, 44, 45],
  ),
];