import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shopping_project/screens/watches_page.dart';
import 'package:shopping_project/screens/iphone_page.dart';
import 'package:shopping_project/screens/macbook_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  bool isSelectedWatches = true;
  bool isSelectedIphones = false;
  bool isSelectedMacbooks = false;
  List<Widget> myPages = [
    const WatchesPage(),
    const IphonePage(),
    const MacBookPage(),
  ];
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container( // menu bar left
            height: MediaQuery.sizeOf(context).height, //ارتفاع موبایل
            width: MediaQuery.sizeOf(context).width * 25 / 100, // عرص موبایل به اندازه %25
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelectedWatches = true;
                        isSelectedMacbooks = false;
                        isSelectedIphones = false;
                        selectedIndex = 0;
                      });
                    },
                    child: Transform.rotate(
                      angle: -pi / 2,
                      child: Column(
                        children: [
                          Text(
                            "Watches",
                            style: TextStyle(
                              color: isSelectedWatches ? Colors.white : Colors.grey,          
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 1),
                            height: 3,
                            width: 50,
                            color: isSelectedWatches ? Colors.white : Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:100.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelectedWatches = false;
                        isSelectedMacbooks = false;
                        isSelectedIphones = true;
                        selectedIndex = 1;
                      });
                    },
                    child: Transform.rotate(
                      angle: -pi / 2,
                      child: Column(
                        children: [
                          Text(
                            "iPhones",
                            style: TextStyle(
                              color: isSelectedIphones ? Colors.white : Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 1),
                            height: 3,
                            width: 50,
                            color: isSelectedIphones ? Colors.white : Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:100.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelectedWatches = false;
                        isSelectedMacbooks = true;
                        isSelectedIphones = false;
                        selectedIndex = 2;
                      });
                    },
                    child: Transform.rotate(
                      angle: -pi / 2,
                      child: Column(
                        children: [
                          Text(
                            "MacBooks",
                            style: TextStyle(
                              color: isSelectedMacbooks ? Colors.white : Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 1),
                            height: 3,
                            width: 50,
                            color: isSelectedMacbooks ? Colors.white : Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width * 75 / 100,
                child: myPages[selectedIndex],
              )
            ],
          )
        ],
      ),
    );
  }
}