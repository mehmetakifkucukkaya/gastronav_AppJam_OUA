import 'package:flutter/material.dart';
import 'package:gastro_nav/data/data.dart';
import 'package:gastro_nav/pages/event_page.dart';
import 'package:gastro_nav/pages/home_page.dart';
import 'package:gastro_nav/pages/maps_page.dart';
import 'package:gastro_nav/pages/settings_page.dart';

class HomePageBottomNavbar extends StatefulWidget {
  const HomePageBottomNavbar({super.key});

  @override
  State<HomePageBottomNavbar> createState() =>
      _HomePageBottomNavbarState();
}

class _HomePageBottomNavbarState extends State<HomePageBottomNavbar> {
  var searchController = TextEditingController();

  var data = Data().restaurantCardItems;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const MapsPage(),
    const EventsPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.notifications,
              color: Color(0xFF60BA46),
              size: 40,
            ),
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Harita',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Etkinlikler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ayarlar',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
