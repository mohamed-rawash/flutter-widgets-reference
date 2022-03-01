import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:widgets_reference/slider.dart';

import 'date_picker.dart';
import 'dropdown_button_listtile.dart';
import 'grid_view.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;
  List<Widget> _screens = [
    SliderWidget(),
    DropDownAndListTile(),
    GridViewW(),
    AmazingDateWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_index],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _index,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index){
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.apps),
            title: const Text('Categories'),
            activeColor: const Color(0xFFdebfb5),
          ),
          BottomNavyBarItem(
              icon: const Icon(Icons.favorite),
              title: const Text('Favorites'),
              activeColor: Colors.pink
          ),
          BottomNavyBarItem(
              icon: const Icon(Icons.settings),
              title: const Text('Settings'),
              activeColor: Colors.blue
          ),
        ],
      ),
    );
  }
}
