import 'package:flutter/material.dart';
import 'package:homework/screens/profile.screen.dart';
import 'home_screen.dart';
import '../theme/app_colors.dart';
// import 'package:homework/gen_l10n/app_localizations.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  // Pages for each tab
  final List<Widget> _pages = [HomeScreen(), SettingsScreen()];

  // Handle bottom navigation taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.favorite_outline),
          //   label: 'Home',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.shopping_bag_outlined),
          //   label: 'Home',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        showSelectedLabels: false, // 👈 Hide selected label
        showUnselectedLabels: false, // 👈 Hide unselected label
      ),
    );
  }
}
