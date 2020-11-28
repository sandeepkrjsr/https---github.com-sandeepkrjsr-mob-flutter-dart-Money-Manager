import 'package:flutter/material.dart';

import 'AddTransactionPage.dart';
import 'LeaderBoardPage.dart';
import 'TransactionHistoryPage.dart';
import 'UserAccountPage.dart';
import 'WallFeedPage.dart';

class BottomNavigator extends StatefulWidget{
  @override
  BottomNavigatorState createState() => BottomNavigatorState();
}

class BottomNavigatorState extends State<BottomNavigator>{

  int selectedIndex = 0;

  List<Widget> pageOptions = <Widget>[
    WallFeedVerticalSwipe(),
    LeaderBoardAppBar(),
    AddTransactionAppBar(),
    TransactionHistoryAppBar(),
    UserAccountScrollUp()
  ];

  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Seed',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pageOptions.elementAt(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          items: <BottomNavigationBarItem>[
            bottomNavigationItem("Feeds", Icons.home),
            bottomNavigationItem("Leaderboard", Icons.dns),
            bottomNavigationCenterItem("Wallet", Icons.add_circle),
            bottomNavigationItem("History", Icons.history),
            bottomNavigationItem("Profile", Icons.person),
          ],
        ),
      ),
    );
  }

  bottomNavigationItem(String title, IconData icon){
    return BottomNavigationBarItem(
      title: Text(title),
      icon: Icon(icon),
    );
  }

  bottomNavigationCenterItem(String title, IconData icon){
    return BottomNavigationBarItem(
      title: Text(title),
      icon: Icon(icon, size: 72),
    );
  }

}