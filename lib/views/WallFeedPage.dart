import 'package:flutter/material.dart';

class WallFeedPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              wallFeedImageContainer(),
              wallFeedInfoContainer()
            ],
          ),
          Positioned(
            top: 470,
            left: 300,
            child: wallFeedSeedButton()
          ),
          Positioned(
            top: 25,
            left: 275,
            child: wallFeedFilterButton()
          )
        ],
      ),
    );
  }

  wallFeedImageContainer() {
    return Container(
      height: 500,
      child: Stack(
        children: <Widget>[
          feedProfilePicImage(),
          feedProfileNameText(),
          feedProfileSeedText(),
        ],
      ),
    );
  }

  feedProfilePicImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.network("https://avatars2.githubusercontent.com/u/22400262?s=460&u=b980e229025761f957c540a0eaf920c5da56c724&v=4",
        fit: BoxFit.cover,
      )
    );
  }

  feedProfileNameText() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 40),
      alignment: Alignment.bottomLeft,
      child: Text("Sandeep\nKumar",
        style: TextStyle(
          fontSize: 48,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  feedProfileSeedText() {
    return Container(
      padding: EdgeInsets.all(16),
      alignment: Alignment.bottomLeft,
      child: Text("1024 Seeders",
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }

  wallFeedInfoContainer() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          feedTopicText(),
          feedAboutText(),
          feedViewProfileButton(),
          feedSocialSiteRow(),
        ],
      ),
    );
  }

  feedTopicText() {
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

  feedAboutText() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Text("I'm a Travel Vlogger, solo travel enthusiast and travel Flim Maker. Follow along for some epic adventures and travel stories.",
        style: TextStyle(
          fontSize: 16
        ),
      ),
    );
  }

  feedViewProfileButton() {
    return Container(
      padding: EdgeInsets.all(8),
      child: FlatButton(
        child: Text("View Profile"),
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

  feedSocialSiteRow() {
    return Container(
      child: Row(
        children: <Widget>[
          //socialSitesConnect("lib/Assets/website.png", "5k"),
          //socialSitesConnect("lib/Assets/youtube.png", "25k"),
          //socialSitesConnect("lib/Assets/instagram.png", "15k"),
        ],
      ),
    );
  }

  socialSitesConnect(String icon, String text){
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Image.asset(icon),
          Text(text)
        ],
      ),
    );
  }

  wallFeedSeedButton() {
    return Container(
      child: RawMaterialButton(
        elevation: 2.0,
        fillColor: Colors.white,
        child: Text("Seed"),
        padding: EdgeInsets.all(24.0),
        shape: CircleBorder(),
        onPressed: () {},
      ),
    );
  }

  wallFeedFilterButton() {
    return Container(
      padding: EdgeInsets.all(32),
      alignment: Alignment.topRight,
      child: FlatButton(
        color: Colors.white,
        child: Text("Filter"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
          side: BorderSide(
            color: Colors.blueGrey
          )
        ),
        onPressed: ()=>{}
      ),
    );
  }

}

class WallFeedVerticalSwipe extends StatelessWidget{

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: pageController,
      children: List.generate(10, (index) => WallFeedPage()),
    );
  }

}