class Product {
  const Product({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    this.price=0,
    this.duration=0,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final int duration;
  final int price;
}