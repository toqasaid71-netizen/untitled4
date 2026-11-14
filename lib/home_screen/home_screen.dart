import 'package:flutter/material.dart';

import '../Protects/Products.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('popular products',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,

                ),
              ),
              GestureDetector(
                  onTap: (){},
                  child: Text('View all',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                  ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Products(

                );
              },),
        )


      ],
    );
  }
}
