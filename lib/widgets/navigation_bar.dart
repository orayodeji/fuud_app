// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fuud_layout/pages/home_page.dart';
import 'package:fuud_layout/pages/orders_page.dart';
import 'package:fuud_layout/pages/profile_page.dart';
import 'package:fuud_layout/pages/restaurants_page.dart';

class NavigationBottomBar extends StatefulWidget {
  NavigationBottomBar({Key? key, required int this.currentIndex})
      : super(key: key);
  int currentIndex;

  @override
  State<NavigationBottomBar> createState() => _NavigationBottomBarState();
}

class _NavigationBottomBarState extends State<NavigationBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      selectedFontSize: 20,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
      unselectedItemColor: Color.fromRGBO(143, 143, 143, 1),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu_outlined), label: 'Orders'),
        BottomNavigationBarItem(
            icon: Icon(Icons.restaurant), label: 'Restaurants'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle), label: "Profile")
      ],
      currentIndex: widget.currentIndex,
      selectedItemColor: Color.fromRGBO(100, 99, 143, 1),
      onTap: _onItemTapped,
    );
  }

  _onItemTapped(int index) {
    var context = this.context;
    // setState(() {
    //   widget.currentIndex = index;
    // });

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => OrdersPage()));
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => RestaurantsPage()));
        break;
      // case 3:
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => SearchPage()));
      //   break;
      case 4:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ProfilePage(index: widget.currentIndex.toString())));
        break;
      default:
    }
  }
}
