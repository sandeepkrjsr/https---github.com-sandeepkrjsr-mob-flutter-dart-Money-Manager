class UserExpense {

  final int pkUserExpenseId;
  final String catagory;
  final String name;
  final int cost;
  final String date;
  final String lastUpdatedOn;

  UserExpense({this.pkUserExpenseId, this.catagory, this.name, this.cost, this.date, this.lastUpdatedOn});

  factory UserExpense.fromJson(Map<String, dynamic> json) {
    return UserExpense(
      pkUserExpenseId: json['pkUserExpenseId'] as int,
      catagory: json['catagory'] as String,
      name: json['name'] as String,
      cost: json['cost'] as int,
      date: json['date'] as String,
      lastUpdatedOn: json['lastUpdatedOn'] as String,
    );
  }
}
