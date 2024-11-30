import 'package:flutter/material.dart';

class ConsumerCartScreen extends StatefulWidget{
  const ConsumerCartScreen({super.key});

  @override
  State<ConsumerCartScreen> createState() {
    return _ConsumerCartScreenState();
  }
}

class _ConsumerCartScreenState extends State<ConsumerCartScreen>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('No Product added in cart',style: Theme.of(context).textTheme.bodyLarge,),
    );
  }

}