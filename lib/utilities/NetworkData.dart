import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:money_manager/models/UserExpense.dart';

import 'NetworkUrls.dart';

var count;
var sum;

Future<List<UserExpense>> getData() async {
  final response = await http.get(expenseHistory);
  var data = json.decode(response.body);
  var resp = data["items"];
  count = data["count"];
  sum = data["expenseSum"];
  List<UserExpense> list = resp.map<UserExpense>((json) => UserExpense.fromJson(json)).toList();
  return list;
}

Future<List<UserExpense>> staticExpenseHistory() async {

  final response = await rootBundle.loadString('lib/assets/expenseHistory.json');

  var data = json.decode(response);
  var resp = data["items"];
  count = data["count"];
  sum = data["expenseSum"];
  List<UserExpense> list = resp.map<UserExpense>((json) => UserExpense.fromJson(json)).toList();

  return list;

}