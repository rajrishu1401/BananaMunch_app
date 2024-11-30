import 'package:banana_munch/screens/farmerHomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:banana_munch/widgets/addLocationWidget.dart';
import 'package:banana_munch/screens/farmersTabScreen.dart';
import 'package:banana_munch/screens/consumerTabScreen.dart';

class MoreDetailScreen extends StatefulWidget {
  const MoreDetailScreen({super.key});

  @override
  State<MoreDetailScreen> createState() {
    return _MoreDetailScreenState();
  }
}

class _MoreDetailScreenState extends State<MoreDetailScreen> {
  bool? _isFarmer; // Ensure this line is correctly placed

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        title: Text(
          'Details',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: colorScheme.onPrimary,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Your location of work', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: const AssetImage('assets/images/map.PNG'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6),
                      BlendMode.darken,
                    ),
                ),
                  border: Border.all(
                      width: 1,
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.2))),
              child: Center(
                child: Text('change location?',style:Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface,),
            ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ConsumerTabScreen()));
            }, child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign Up',style: Theme.of(context).textTheme.bodyLarge,),
                  const Icon(Icons.navigate_next)
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
