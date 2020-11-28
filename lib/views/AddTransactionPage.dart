import 'package:flutter/material.dart';

class AddTransactionPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          transactionMoneyRow(),
          transactionDateRow(),
          transactionNameRow(),
          transactionMoneyHintRow()
        ],
      ),
    );
  }

  transactionMoneyRow() {
    return Container(
      padding: EdgeInsets.all(8),
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.numberWithOptions(),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Rs. 0"
        ),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
          color: Colors.grey
        ),
      ),
    );
  }

  transactionDateRow() {
    return Container(
      padding: EdgeInsets.all(8),
      child: ListTile(
        leading: Icon(Icons.today),
        title: Text("Today"),
        trailing: Text("Yesterday?",
          style: TextStyle(
            color: Colors.grey
          ),
        ),
      ),
    );
  }

  transactionNameRow() {
    return Container(
      padding: EdgeInsets.all(8),
      child: ListTile(
        leading: Icon(Icons.description),
        title: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Name or Description"
          ),
          style: TextStyle(
            fontStyle: FontStyle.italic
          ),
        ),
      ),
    );
  }

  transactionMoneyHintRow() {
    return Container(
      padding: EdgeInsets.fromLTRB(8,32,8,8),
      child: Wrap(
        spacing: 16,
        runSpacing: 8,
        children: [
          moneyHintButton(10),
          moneyHintButton(20),
          moneyHintButton(50),
          moneyHintButton(100),
          moneyHintButton(200),
          moneyHintButton(500),
        ],
      )
    );
  }

  moneyHintButton(int money) {
    return Container(
      child: FlatButton(
        child: Text("+ " + money.toString()),
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

class AddTransactionAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text('Add Transaction',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.close), 
            onPressed: null
          )
        ],
      ),
      body: AddTransactionPage(),
    );
  }
}