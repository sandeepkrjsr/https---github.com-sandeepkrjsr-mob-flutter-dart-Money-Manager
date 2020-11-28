import 'package:flutter/material.dart';

class LeaderBoardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          leaderBoardTopicRow(),
          leaderBoardTopicRow(),
          leaderBoardTopicRow()
        ],
      ),
    );
  }

  leaderBoardTopicRow() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          boardTopicTitleText(),
          boardTopicImageList(),
          boardTopicExploreMoreButton()
        ],
      ),
    );
  }

  boardTopicTitleText() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Text("#Travel",
        style: TextStyle(
          fontSize: 20,
          color: Colors.green
        ),
      ),
    );
  }

  boardTopicImageList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          topicImageCard(),
          topicImageCard(),
          topicImageCard(),
          topicImageCard(),
          topicImageCard()
        ],
      ),
    );
  }

  topicImageCard() {
    return Container(
      padding: EdgeInsets.all(8),
      width: 144,
      height: 196,
      child: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network("https://avatars2.githubusercontent.com/u/22400262?s=460&u=b980e229025761f957c540a0eaf920c5da56c724&v=4",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.bottomLeft,
            child: Text("Sandeep\nKumar",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      )
    );
  }

  boardTopicExploreMoreButton() {
    return Container(
      padding: EdgeInsets.all(8),
      child: FlatButton(
        child: Text("Explore More"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
          side: BorderSide(
            color: Colors.blueGrey
          )
        ),
        onPressed: null
      ),
    );
  }

}

class LeaderBoardAppBar extends StatelessWidget{
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
            LeaderBoardPage(),
            LeaderBoardPage(),
            LeaderBoardPage(),
            LeaderBoardPage(),
            LeaderBoardPage(),
          ],
        )
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