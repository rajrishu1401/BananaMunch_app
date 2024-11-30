import 'package:flutter/material.dart';

class FarmerChatScreen extends StatefulWidget{
  const FarmerChatScreen({super.key});

  @override
  State<FarmerChatScreen> createState() {
    return _FarmerChatScreenState();
  }

}

class _FarmerChatScreenState extends State<FarmerChatScreen>{
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('nothing to show now'),
    );
  }

}