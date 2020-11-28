import 'package:flutter/material.dart';
import 'package:money_manager/utilities/NetworkData.dart';

class TransactionHistoryPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [
          totalMoneyAndCountRow(),
          Container(
            child: FutureBuilder(
              future: staticExpenseHistory(),//getData(),
              builder: (context, snapshot) {
                return snapshot.data != null
                  ? listViewWidget(snapshot.data)
                  : Center(child: CircularProgressIndicator());
              }
            ),
          )
        ],
      )
    );
  }

  totalMoneyAndCountRow() {
    return Container(
      padding: EdgeInsets.all(32),
      alignment: Alignment.center,
      child: Text("Rs. " + sum.toString() + " (" + count.toString() + ")",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.grey
        ),
      ),
    );
  }

  listViewWidget(data) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            transactionHistoryCard(data[index]),
            Divider(), //                           <-- Divider
          ],
        );
      },
    );
  }

  transactionHistoryCard(data) {
    return Container(
      height: 60,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Image.network("https://avatars2.githubusercontent.com/u/22400262?s=460&u=b980e229025761f957c540a0eaf920c5da56c724&v=4")
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(72,8,8,8),
            alignment: Alignment.topLeft,
            child: Text(data.catagory,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(72,8,8,8),
            alignment: Alignment.bottomLeft,
            child: Text(data.name,
              style: TextStyle(
                color: Colors.grey
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.topRight,
            child: Text(data.cost.toString(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.bottomRight,
            child: Text(data.date,
              style: TextStyle(
                color: Colors.grey
              ),
            ),
          ),
        ],
      )
    );
  }

}

class TransactionHistoryAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text('My History',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_alt), 
            onPressed: null
          )
        ],
      ),
      body: TransactionHistoryPage(),
    );
  }
}