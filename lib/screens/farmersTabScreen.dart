import 'package:banana_munch/screens/ProductCategoryScreen.dart';
import 'package:banana_munch/screens/farmerProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana_munch/screens/farmerHomeScreen.dart';
import 'package:banana_munch/screens/farmersProductScreen.dart';
import 'package:banana_munch/screens/farmerChatScreen.dart';
import 'package:banana_munch/provider/farmersItems_provider.dart';
import 'package:banana_munch/widgets/drawer_widget.dart';

class FarmersTabScreen extends ConsumerStatefulWidget {
  const FarmersTabScreen({super.key});

  @override
  ConsumerState<FarmersTabScreen> createState() {
    return _FarmersTabScreen();
  }
}

class _FarmersTabScreen extends ConsumerState<FarmersTabScreen> {

  void _drawerScreenChange(String screen){
    Navigator.pop(context);
    if(screen=='Profile'){
      Navigator.push(context, MaterialPageRoute(builder:(ctx)=>const FarmerProfileScreen(),));
    }
    if(screen=='Help'){
      Navigator.push(context, MaterialPageRoute(builder:(ctx)=>const FarmerProfileScreen(),));
    }
    if(screen=='History'){
      Navigator.push(context, MaterialPageRoute(builder:(ctx)=>const FarmerProfileScreen(),));
    }
    if(screen=='Needs'){
      Navigator.push(context, MaterialPageRoute(builder:(ctx)=>const FarmerProfileScreen(),));
    }
    if(screen=='language'){
      Navigator.push(context, MaterialPageRoute(builder:(ctx)=>const FarmerProfileScreen(),));
    }
  }

  int selectedTabIndex = 1;
  void selectTab(int index) {
    setState(() {
      if (index == 0) {
        selectedTabIndex = 0;
      } else if(index==2){
        selectedTabIndex = 2;
      } else {
        selectedTabIndex=1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = const FarmerHomeScreen();
    String activeTitle = 'Home Page';
    Widget? floatingActionButton;
    if (selectedTabIndex == 0) {
      //final favoriteMeal=ref.watch(favoritesMealProvider);
      activeScreen = const FarmerProductScreen();
      activeTitle = 'Your Products';
      floatingActionButton = FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const CategoryScreen();
            }));
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          backgroundColor: Colors.green,
          child: const Icon(Icons.add, size: 30),
      );
    }
    if (selectedTabIndex == 2) {
      //final favoriteMeal=ref.watch(favoritesMealProvider);
      activeScreen = const FarmerChatScreen();
      activeTitle = 'Chat';
      floatingActionButton=null;
    }
    return Scaffold(
      drawer: DrawerWidget(changeScreen: _drawerScreenChange,),
      appBar: AppBar(
        title: Text(activeTitle),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectTab,
        currentIndex: selectedTabIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grass),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: 'Chat',
          )
        ],
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
