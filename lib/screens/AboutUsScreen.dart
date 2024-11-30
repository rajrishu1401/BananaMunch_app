import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banana Munch'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Product Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Healthy, crispy, and flavorful banana chips perfect for every snacking occasion.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Packaging Options:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              '- Single-serving packs (for on-the-go convenience)',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Family-sized packs (ideal for sharing)',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            // Key Features
            Text(
              'Key Features:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text('- Nutritional benefits', style: TextStyle(fontSize: 16)),
            Text('- Variety of flavors', style: TextStyle(fontSize: 16)),
            Text('- Lightweight and portable', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),

            // Market Analysis
            Text(
              'Market Analysis',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '- Daily Snackers: ~100% snack daily, a large potential market.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Frequent Snackers: 35.7% snack 2–3 times daily – focus on versatility.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Packaging Preferences:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                'assets/images/size.png', // Add your image path
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '- 50% prefer both single-serving and family-sized packs.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Single-serving packs are most popular (28.6%).',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Family-sized packs cater to 21.4%, ideal for families.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Snack Frequency Analysis',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Center(
              child: Image.asset(
                'assets/images/snack.png', // Add your image path
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20,),
            // Insights
            Text(
              'Actionable Insights',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '- Highlight convenience and nutritional benefits in promotions.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Offer various pack sizes to cater to diverse consumer needs.',
              style: TextStyle(fontSize: 16),
            ),
            // Title
            // Image for Packaging Preferences


            // Image for Snack Frequency

          ],
        ),
      ),
    );
  }
}
