import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana_munch/Model/products.dart';

class FavoriteMealNotifier extends StateNotifier<List<Product>>{
  FavoriteMealNotifier() : super([]);

  bool toggleMealFavorite(Product product){
    final isMealFavorite=state.contains(product);
    if(isMealFavorite){
      state=state.where((m) => m.id !=product.id ).toList();
      return false;
    }
    else{
      state=[...state,product];
      return true;
    }
  }
}

final favoritesMealProvider=StateNotifierProvider<FavoriteMealNotifier,List<Product>>((ref){
  return FavoriteMealNotifier();
});