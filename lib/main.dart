import 'package:flutter/material.dart';

import 'ui/home.dart';
import 'utils/custom_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const IndexView());
  }
}

class IndexView extends StatefulWidget {
  const IndexView({super.key});

  @override
  State<IndexView> createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  int selectedIndex = 0;
  List pageView = [
    const HomeView(),
    const Center(
      child: Text('Cart View'),
    ),
    const Center(
      child: Text('Favorite View'),
    ),
    const Center(
      child: Text('Profile View'),
    ),
  ];

  void onItemTapped(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pageView[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              activeIcon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14), color: greyTwo),
                child: Image.asset(
                  'assets/images/home_icon.png',
                  color: white,
                ),
              ),
              icon: Image.asset(
                'assets/images/home_icon.png',
                color: grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14), color: greyTwo),
                child: Image.asset(
                  'assets/images/cart_icon.png',
                  color: white,
                ),
              ),
              icon: Image.asset(
                'assets/images/cart_icon.png',
                color: grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14), color: greyTwo),
                child: Image.asset(
                  'assets/images/star_icon.png',
                  height: 20,
                  color: white,
                ),
              ),
              icon: Image.asset(
                'assets/images/star_icon.png',
                height: 20,
                color: grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14), color: greyTwo),
                child: Image.asset(
                  'assets/images/profile_icon.png',
                  color: white,
                ),
              ),
              icon: Image.asset(
                'assets/images/profile_icon.png',
                color: grey,
                height: 20,
              ),
              label: '')
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
