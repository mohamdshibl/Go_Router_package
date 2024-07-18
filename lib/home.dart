import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing/app_routing/routes_names.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ElevatedButton(
          onPressed: () {context.goNamed( RoutesNames.aPage);},
          child: const Text('play'),
      ),),

      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed:() {
            String x= 'Shiblxx';
            context.go("/sub/$x");
          },
          child: const Icon(Icons.ice_skating)),
      bottomNavigationBar: SlidingClippedNavBar(
        barItems: [BarItem(title: "Home", icon: Icons.home),
          BarItem(title: "Settings", icon: Icons.settings)
        ],
        iconSize: 30,
        selectedIndex: selectedIndex,
        onButtonPressed: (int index) { setState(() {
        //  selectedIndex = index;

        }); },
        backgroundColor: Colors.white, activeColor: Colors.red,
      ),
    );
  }
}
