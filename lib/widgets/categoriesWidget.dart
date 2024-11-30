import 'package:flutter/material.dart';
import 'package:banana_munch/Model/categories.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category, required this.categoryInside});

  final void Function(Category) categoryInside;
  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        categoryInside(category);
      },
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).colorScheme.primaryContainer,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            category.title,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
