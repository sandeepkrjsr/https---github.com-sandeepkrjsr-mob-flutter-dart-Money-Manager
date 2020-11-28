import 'package:flutter/material.dart';

class MailBoxPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          title: Text('Top Creators',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(36.0),
            child: TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              tabs: [
                tab("today"),
                tab("this week"),
                tab("this month"),
                tab("this year"),
                tab("over all"),
              ]
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            dummy(),
            dummy(),
            dummy(),
            dummy(),
            dummy()
          ],
        )
      ),
    );
  }

  dummy() {
    return Container(
      child: Center(
        child: Text('Tab'),
      ),
    );
  }

  tab(String titleText) {
    return Container(
      width: 100,
      alignment: Alignment.centerLeft,
      child: Tab(
        child: Text(titleText),
      ),
    );
  }

}