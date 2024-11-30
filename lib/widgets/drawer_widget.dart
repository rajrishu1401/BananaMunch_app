import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key,required this.changeScreen});
  final void Function(String screen) changeScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Theme.of(context).colorScheme.primaryContainer,
                    Theme.of(context)
                        .colorScheme
                        .primaryContainer
                        .withOpacity(0.55),
                  ],
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.menu_open,
                    color: Theme.of(context).colorScheme.primary,
                    size: 48,
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Text(
                    'Menu',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListTile(
                  leading: Icon(Icons.account_circle_rounded,size: 26,color:Theme.of(context).colorScheme.onSurface,),
                  title: Text('Your Profile',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontSize: 24,
                    ),),
                  onTap: (){
                    changeScreen('Profile');
                  },
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF2D6A4F), // Background color
                  ),
                  padding: const EdgeInsets.all(8.0), // Padding around the icon
                  child: const Icon(
                    Icons.question_mark_outlined,
                    size: 20, // Icon color
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListTile(
                  leading: Icon(Icons.currency_rupee,size: 26,color:Theme.of(context).colorScheme.onSurface,),
                  title: Text('Earning History',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontSize: 24,
                    ),),
                  onTap: (){
                    changeScreen('History');
                  },
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF2D6A4F), // Background color
                  ),
                  padding: const EdgeInsets.all(8.0), // Padding around the icon
                  child: const Icon(
                    Icons.question_mark_outlined,
                    size: 20, // Icon color
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListTile(
                  leading: Icon(Icons.list_alt,size: 26,color:Theme.of(context).colorScheme.onSurface,),
                  title: Text('See Needs',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontSize: 24,
                    ),),
                  onTap: (){
                    changeScreen('Needs');
                  },
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF2D6A4F), // Background color
                  ),
                  padding: const EdgeInsets.all(8.0), // Padding around the icon
                  child: const Icon(
                    Icons.question_mark_outlined,
                    size: 20, // Icon color
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListTile(
                  leading: Icon(Icons.language,size: 26,color:Theme.of(context).colorScheme.onSurface,),
                  title: Text('Change Language',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontSize: 24,
                    ),),
                  onTap: (){
                    changeScreen('language');
                  },
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF2D6A4F), // Background color
                  ),
                  padding: const EdgeInsets.all(8.0), // Padding around the icon
                  child: const Icon(
                    Icons.question_mark_outlined,
                    size: 20, // Icon color
                  ),
                ),
              )
            ],
          ),
          ListTile(
            leading: Icon(Icons.help_center_outlined,size: 26,color:Theme.of(context).colorScheme.onSurface,),
            title: Text('Help',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 24,
              ),),
            onTap: (){
              changeScreen('Help');
            },
          ),
        ],
      ),
    );
  }
}
