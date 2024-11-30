import 'package:flutter/material.dart';
import 'package:banana_munch/Model/categories.dart';
import 'package:banana_munch/Model/products.dart';

List<Category> farmProducedCategories = [
  const Category(
    id: 'c001',
    title: 'Yellow',
    color: Colors.red,
    image: 'assets/images/yellow.jpg'
  ),
  const Category(
    id: 'c002',
    title: 'White',
    color: Colors.green,
    image: 'assets/images/white.jpg'
  ),
  const Category(
    id: 'c003',
    title: 'White Prime',
    color: Colors.yellow,
    image: 'assets/images/white prime.jpg'
  ),
  const Category(
    id: 'c004',
    title: 'Yellow Prime',
    color: Colors.brown,
    image: 'assets/images/yellow prime.jpg'
  ),
  const Category(
    id: 'c005',
    title: 'Red',
    color: Colors.orange,
    image: 'assets/images/red.jpg'
  ),
  const Category(
    id: 'c006',
    title: 'Green',
    color: Colors.blue,
    image: 'assets/images/green.jpg'
  ),
  const Category(
    id: 'c007',
    title: 'White Op',
    color: Colors.purple,
    image: 'assets/images/yellow op.jpg'
  ),
  /*const Category(
    id: 'c008',
    title: 'Spices',
    color: Colors.amber,
    image: 'assets/images/spices.webp'
  ),
  const Category(
    id: 'c009',
    title: 'Honey',
    color: Colors.deepOrange,
    image: 'assets/images/honey.webp'
  ),*/
];


List<Product> farmProducedProducts = [

  const Product(
    id: 'p001',
    categories: ['Fruits'],
    title: 'Apples',
    imageUrl: 'https://images.unsplash.com/photo-1568954370-6d77d3f9b3f8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',

  ),
  const Product(
    id: 'p002',
    categories: ['Fruits'],
    title: 'Bananas',
    imageUrl: 'https://images.unsplash.com/photo-1581602599717-63184c858d69?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',
  ),
  const Product(
    id: 'p003',
    categories: ['Fruits'],
    title: 'Mangoes',
    imageUrl: 'https://images.unsplash.com/photo-1598072197786-8c548d4c4d55?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',

  ),

  const Product(
    id: 'p004',
    categories: ['Vegetables'],
    title: 'Potatoes',
    imageUrl: 'https://images.unsplash.com/photo-1596459022726-bb3875bcd45e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',
  ),
  const Product(
    id: 'p005',
    categories: ['Vegetables'],
    title: 'Tomatoes',
    imageUrl: 'https://images.unsplash.com/photo-1560263259-26d5d8a3b3c6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',
  ),
  const Product(
    id: 'p006',
    categories: ['Vegetables'],
    title: 'Carrots',
    imageUrl: 'https://images.unsplash.com/photo-1572385271568-11a90a4588b8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',
  ),

  const Product(
    id: 'p007',
    categories: ['Grains'],
    title: 'Rice',
    imageUrl: 'https://images.unsplash.com/photo-1551198355-06616b38d747?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',

  ),
  const Product(
    id: 'p008',
    categories: ['Grains'],
    title: 'Wheat',
    imageUrl: 'https://images.unsplash.com/photo-1542281286-4e9cf4cfb5e3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',

  ),

  const Product(
    id: 'p009',
    categories: ['Legumes'],
    title: 'Lentils',
    imageUrl: 'https://images.unsplash.com/photo-1584350736112-bd43f5f96430?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',
  ),
  const Product(
    id: 'p010',
    categories: ['Legumes'],
    title: 'Chickpeas',
    imageUrl: 'https://images.unsplash.com/photo-1598577881600-d6e4176767f0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',
  ),

  const Product(
    id: 'p011',
    categories: ['Nuts'],
    title: 'Almonds',
    imageUrl: 'https://images.unsplash.com/photo-1592084580421-b8916cb4a234?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',

  ),
  const Product(
    id: 'p012',
    categories: ['Nuts'],
    title: 'Cashews',
    imageUrl: 'https://images.unsplash.com/photo-1577372867287-14b8e31c6d59?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',

  ),

  const Product(
    id: 'p013',
    categories: ['Dairy Products'],
    title: 'Milk',
    imageUrl: 'https://images.unsplash.com/photo-1570170987810-fc32b5101ae5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',
  ),
  const Product(
    id: 'p014',
    categories: ['Dairy Products'],
    title: 'Cheese',
    imageUrl: 'https://images.unsplash.com/photo-1552440810-3f2c2b1c5e4f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',

  ),

  const Product(
    id: 'p015',
    categories: ['Herbs'],
    title: 'Basil',
    imageUrl: 'https://images.unsplash.com/photo-1571785424862-68b2db6c4de5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',
  ),
  const Product(
    id: 'p016',
    categories: ['Herbs'],
    title: 'Mint',
    imageUrl: 'https://images.unsplash.com/photo-1592680846092-95c9119f3a6b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',
  ),

  const Product(
    id: 'p017',
    categories: ['Spices'],
    title: 'Turmeric',
    imageUrl: 'https://images.unsplash.com/photo-1607923038356-e9354d9a4d46?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',

  ),
  const Product(
    id: 'p018',
    categories: ['Spices'],
    title: 'Cumin',
    imageUrl: 'https://images.unsplash.com/photo-1594928599255-52d5976829d7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',

  ),

  const Product(
    id: 'p019',
    categories: ['Honey'],
    title: 'Organic Honey',
    imageUrl: 'https://images.unsplash.com/photo-1604903563287-9d08bfb5ae89?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyNzEyMjN8MHwxfGFsbHwxfHx8fHx8fHx8fDE2NjE4NjkwNjI&ixlib=rb-1.2.1&q=80&w=400',
  ),
];