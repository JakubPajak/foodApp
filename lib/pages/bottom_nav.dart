import 'package:ecommerce_app/pages/home.dart';
import 'package:ecommerce_app/pages/order.dart';
import 'package:ecommerce_app/pages/profile_page.dart';
import 'package:ecommerce_app/pages/wallet.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homePage;
  late ProfilePage profile;
  late OrderPage order;
  late WalletPage wallet;

  @override
  void initState() {
    homePage = Home();
    profile = ProfilePage();
    order = OrderPage();
    wallet = WalletPage();
    pages = [homePage, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: CurvedNavigationBar(
        height: 75,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        backgroundColor: Colors.white,
        color: const Color.fromARGB(255, 175, 219, 255),
        items: [
          Icon(
            Icons.home_outlined,
            color: Colors.black,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
          Icon(
            Icons.wallet_outlined,
            color: Colors.black,
          ),
          Icon(
            Icons.person_2_outlined,
            color: Colors.black,
          ),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
