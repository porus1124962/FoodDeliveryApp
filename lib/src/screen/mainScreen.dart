import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/pages/profilePage.dart';
import 'package:food_delivery_app/src/pages/orderPage.dart';
import 'package:food_delivery_app/src/pages/homePage.dart';

class MainScreen extends StatefulWidget
{
  _MainScreenState createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen>
{

  int currentIndex =0;
  late List<Widget> pages;
  late Widget currentPage;
  late HomePage homePage;
  late OrderPage orderPage;
  late ProfilePage profilePage;

  @override
  void initState() {
    super.initState();
    homePage=HomePage();
    orderPage=OrderPage();
    profilePage=ProfilePage();
    pages=[homePage,orderPage,profilePage];
    currentPage=homePage;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index)
        {
          setState(() {
            currentIndex=index;
            currentPage=pages[index];
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            title: Text("home"),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.shopping_cart),
            title: Text("Order"),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
      body: currentPage,
    );
  }
}