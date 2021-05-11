import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/screens/cart_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/favorites_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/home_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/profile_screen.dart';

class HomeBottomNavigationScreen extends StatefulWidget {
  static const id = 'home_bottom_navigation_screen';

  @override
  _HomeBottomNavigationScreenState createState() =>
      _HomeBottomNavigationScreenState();
}

class _HomeBottomNavigationScreenState
    extends State<HomeBottomNavigationScreen> {
  int _selectedIndex = 0;

  static final _data = <Map<String, dynamic>>[
    {
      'selected': Icon(Icons.home),
      'unselected': Icon(Icons.home_outlined),
      'widget': HomeScreen(),
    },
    {
      'selected': Icon(Icons.favorite),
      'unselected': Icon(Icons.favorite_border),
      'widget': FavoritesScreen(),
    },
    {
      'selected': Icon(Icons.shopping_cart),
      'unselected': Icon(Icons.shopping_cart_outlined),
      'widget': CartScreen(),
    },
    // No UI available for this screen
    {
      'selected': Icon(Icons.location_on),
      'unselected': Icon(Icons.location_on_outlined),
      'widget': HomeScreen(),
    },
    {
      'selected': Icon(Icons.account_circle),
      'unselected': Icon(Icons.account_circle_outlined),
      'widget': ProfileScreen(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        body: EasyContainer(
          margin: 0,
          padding: 0,
          color: Colors.transparent,
          customBorderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
          child: IndexedStack(
            index: _selectedIndex,
            children: _data.map((e) => e['widget']!).toList().cast<Widget>(),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: _customBottomNavigationBar(),
        ),
      ),
    );
  }

  Widget _customBottomNavigationBar() {
    return Row(
      children: List.generate(_data.length, (index) {
        return Expanded(
          child: IconButton(
            icon: index == _selectedIndex
                ? _data[index]['selected']!
                : _data[index]['unselected']!,
            iconSize: 30,
            color: index == _selectedIndex ? Colors.amber : Colors.white,
            onPressed: () => setState(() => _selectedIndex = index),
          ),
        );
      }).toList(),
    );
  }
}
