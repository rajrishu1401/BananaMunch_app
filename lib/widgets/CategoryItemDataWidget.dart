import 'package:flutter/material.dart';

class CategoryItemDataWidget extends StatelessWidget {
  final String data;
  final IconData icon;

  const CategoryItemDataWidget({
    super.key,
    required this.data,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(width: 4),
        Text(
          data,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
