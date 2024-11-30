import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:meals/Screens/categoryItem_Screen.dart';
import 'package:banana_munch/dataset/data.dart';
import 'package:banana_munch/Model/categories.dart';
//import 'package:meals/provider/filters_provider.dart';
import 'package:banana_munch/widgets/categoriesWidget.dart';
import 'package:banana_munch/screens/CategoryItemScreen.dart';

class ConsumerCategoryScreen extends StatefulWidget {
  const ConsumerCategoryScreen({super.key});
  @override
  State<ConsumerCategoryScreen> createState() {
    return _CategoryScreenState();
  }
}

class _CategoryScreenState extends State<ConsumerCategoryScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController=AnimationController(
      vsync:this,
      duration: const Duration(milliseconds:100),
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
    categoryInside(Category category) {
      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
        return CategoryItemScreen(category: category);
      }));
    }


    return  AnimatedBuilder(
          animation:_animationController ,
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            padding: const EdgeInsets.all(16),
            children: [
              for (final category in farmProducedCategories)
                CategoryWidget(
                  category: category,
                  categoryInside: categoryInside,
                )
            ],
          ),
          builder:(context,child)=>SlideTransition(position:Tween(
              begin: const Offset(0,0.3),
              end:const  Offset(0,0)
          ).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut,),),
            child: child,)
    );
  }
}

