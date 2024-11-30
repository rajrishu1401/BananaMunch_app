import 'package:flutter/material.dart';

class FarmerProductScreen extends StatefulWidget {
  const FarmerProductScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FarmerProductScreenState();
  }
}

class _FarmerProductScreenState extends State<FarmerProductScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('No product added'),
          ],
        ),
      );
  }
}
