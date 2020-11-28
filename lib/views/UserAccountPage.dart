import 'package:flutter/material.dart';

class UserAccountPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              userAccountImageContainer(),
              userAccountInfoContainer()
            ],
          ),
          Positioned(
            top: 470,
            left: 315,
            child: userProfileEditButton()
          ),
          Container(
            alignment: Alignment.topRight,
            child: userProfileMenuButton()
          )
        ],
      ),
    );
  }

  userAccountImageContainer() {
    return Container(
      height: 500,
      child: Stack(
        children: <Widget>[
          accountProfilePicImage(),
          accountProfileNameText(),
        ],
      ),
    );
  }

  accountProfilePicImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.network("https://avatars2.githubusercontent.com/u/22400262?s=460&u=b980e229025761f957c540a0eaf920c5da56c724&v=4",
        fit: BoxFit.cover,
      )
    );
  }

  accountProfileNameText() {
    return Container(
      padding: EdgeInsets.all(16),
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

  userAccountInfoContainer() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          accountSeedInfoText(),
          accountWalletInfoText(),
          accountTopicText(),
          accountAboutText(),
          accountSocialSiteColumn(),
        ],
      ),
    );
  }

  accountSeedInfoText() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "128\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  )
                ),
                TextSpan(
                  text: "Seeders",
                  style: TextStyle(
                    color: Colors.black
                  )
                )
              ]
            ) 
          ),
          SizedBox(
            width: 16,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "64\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  )
                ),
                TextSpan(
                  text: "Seeding",
                  style: TextStyle(
                    color: Colors.black
                  )
                )
              ]
            ) 
          ),
        ],
      )
    );
  }

  accountWalletInfoText(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton.icon(
            onPressed: () {}, 
            padding: EdgeInsets.all(8),
            icon: Icon(Icons.monetization_on,
              color: Colors.green,
            ), 
            label: Text("Rs. 1500",
              style: TextStyle(
                color: Colors.green
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.green,
              )
            )
          ),
          SizedBox(
            width: 8,
          ),
          FlatButton.icon(
            onPressed: () {}, 
            icon: Icon(Icons.account_balance_wallet,
              color: Colors.white,
            ), 
            label: Text("Rs. 1250",
              style: TextStyle(
                color: Colors.white
              ),
            ),
            color: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            )
          ),
        ],
      )
    );
  }

  accountTopicText() {
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

  accountAboutText() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Text("I'm a Travel Vlogger, solo travel enthusiast and travel Flim Maker. Follow along for some epic adventures and travel stories.",
        style: TextStyle(
          fontSize: 16
        ),
      ),
    );
  }

  accountSocialSiteColumn() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          socialSiteConnected("sandeepkr.com", "lib/Assets/website.png", "5k"),
          socialSiteConnected("youtube.com/myChannel", "lib/Assets/youtube.png", "25k"),
          socialSiteConnected("@instagram", "lib/Assets/instagram.png", "15k"),
        ],
      ),
    );
  }

  socialSiteConnected(String title, String icon, String text){
    return ListTile(
      title: Text(title),
      leading: Image.asset(icon),
      trailing: Text(text),
    );
  }

  userProfileEditButton() {
    return Container(
      child: RawMaterialButton(
        elevation: 2.0,
        fillColor: Colors.white,
        child: Icon(Icons.edit),
        padding: EdgeInsets.all(16.0),
        shape: CircleBorder(),
        onPressed: () {},
      ),
    );
  }

  userProfileMenuButton() {
    return Container(
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.fromLTRB(0, 48, 16, 0),
      color: Colors.black12,
      child: Icon(
        Icons.menu, 
        color: Colors.blue,
        size: 36,
      )
    );
  }

}

class UserAccountScrollUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: UserAccountPage()
      ),
    );
  }

}