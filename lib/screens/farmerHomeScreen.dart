import 'package:flutter/material.dart';

class FarmerHomeScreen extends StatefulWidget {
  const FarmerHomeScreen({super.key});
  @override
  State<FarmerHomeScreen> createState() {
    return _FarmerHomeScreenState();
  }
}

class _FarmerHomeScreenState extends State<FarmerHomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      lowerBound: 0,
      upperBound: 1,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) => SlideTransition(
          position: Tween(
            begin: const Offset(0, 0.3),
            end: const Offset(0, 0),
          ).animate(CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeInOut,
          )),
          child: child,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Top Half - Farmer's Purchased Products Section with Background Image
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12), // Ensure child also has rounded corners
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Requests for Your Products",
                              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // White text to contrast with background
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF2D6A4F), // Background color
                                ),
                                padding: const EdgeInsets.all(8.0), // Padding around the icon
                                child: const Icon(
                                  Icons.question_mark_outlined,
                                  size: 20, // Icon color
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.5,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                            ),
                            padding: const EdgeInsets.all(8),
                            itemCount: purchasedProducts.length,
                            itemBuilder: (context, index) {
                              final product = purchasedProducts[index]; // access product map
                              return Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(product['image']!), // Background for each product card
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.6),
                                      BlendMode.darken,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(12), // Rounded corners for the card
                                ),
                                child: Card(
                                  elevation: 4,
                                  color: Colors.transparent, // Make card transparent
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          product['name'] ?? 'Unknown',
                                          style: const TextStyle(
                                              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                                        ),
                                        const SizedBox(height: 8),
                                        Text("Quantity: ${product['quantity'] ?? 'N/A'}",
                                            style: const TextStyle(fontSize: 14, color: Colors.white)),
                                        Text("Quantity Requested: ${product['quantityRequested'] ?? 'N/A'}",
                                            style: const TextStyle(fontSize: 14, color: Colors.white),textAlign: TextAlign.center,),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Spacing between sections

              // Bottom Half - Crop Trends and Suggestions Section with Background Image
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12), // Ensure child also has rounded corners
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Today's Product Trends",
                              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // White text to contrast with background
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF2D6A4F), // Background color
                                ),
                                padding: const EdgeInsets.all(8.0), // Padding around the icon
                                child: const Icon(
                                  Icons.question_mark_outlined,
                                  size: 20, // Icon color
                                ),
                              ),
                            )

                          ],
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.5,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                            ),
                            padding: const EdgeInsets.all(8),
                            itemCount: cropTrends.length,
                            itemBuilder: (context, index) {
                              final trend = cropTrends[index]; // access trend map
                              return Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(trend['image']!), // Background for each trend card
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.6),
                                      BlendMode.darken,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(12), // Rounded corners for the card
                                ),
                                child: Card(
                                  elevation: 4,
                                  color: Colors.transparent, // Make card transparent
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          trend['name'] ?? 'Unknown Product',
                                          style: const TextStyle(
                                              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          trend['description'] ?? 'N/A',
                                          style: const TextStyle(fontSize: 14, color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

// Mock data for purchased products and crop trends
final purchasedProducts = [
  {'name': 'Tomatoes', 'quantity': '100kg', 'quantityRequested': '50kg','image':'assets/images/Tomatoes.jpg'},
  {'name': 'Apples', 'quantity': '500kg', 'quantityRequested': '300kg','image':'assets/images/Apples.jpg'},
  {'name': 'Carrots', 'quantity': '200kg', 'quantityRequested': '100kg', 'image': 'assets/images/Carrots.jpg'},
  {'name': 'Bananas', 'quantity': '400kg', 'quantityRequested': '200kg', 'image': 'assets/images/Bananas.webp'},
  // add more items here
];

final cropTrends = [
  {'name': 'Cabbages', 'description': 'Maize is in high demand.','image':'assets/images/Cabbages.jpg'},
  {'name': 'Wheat', 'description': 'Wheat prices are expected to rise.','image':'assets/images/Wheat.jpg'},
  {'name': 'Rice', 'description': 'Rice is a staple crop with steady demand.', 'image': 'assets/images/Rice.jpg'},
  // add more trends here
];
