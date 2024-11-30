import 'package:flutter/material.dart';

class FarmerProfileScreen extends StatefulWidget{
  const FarmerProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FarmerProfileScreenState();
  }

}

class _FarmerProfileScreenState extends State<FarmerProfileScreen>{
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        title: Text('Home Page',style:Theme.of(context).textTheme.bodyLarge?.copyWith(
      color: colorScheme.onPrimary,),
      ),
      ),
      body: const Center(
        child: Text('nothing to show now'),
      ),
    );
  }

}