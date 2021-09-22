import 'package:flutter/material.dart';

class TransactionModel {
  String name;
  String? avatar;
  String currentBalance;
  String month;
  String changePercentageIndicator;
  String changePercentage;
  Color? color;

  TransactionModel({
     this.avatar,
    required this.changePercentage,
    required this.changePercentageIndicator,
    required this.currentBalance,
   required  this.month,
  required  this.name,
    this.color,
  });
}

List<TransactionModel> myTransactions = [
  TransactionModel(
    currentBalance: "\$50.000",
    changePercentage: "Ingreso",
    changePercentageIndicator: "up",
    month: "Abril",
    name: "Gabriel D.",
    color: Colors.green[100],
  ),
  TransactionModel(
    currentBalance: "\$250.000",
    changePercentageIndicator: "down",
    changePercentage: "Egreso",
    month: "Marzo",
    name: "Robert M.",
    color: Colors.orange[100],
  ),
  TransactionModel(
    currentBalance: "\$70.000",
    changePercentage: "Egreso",
    changePercentageIndicator: "down",
    month: "Marzo",
    name: "Alex Doe",
    color: Colors.red[100],
  ),
  TransactionModel(
    currentBalance: "\$45.000",
    changePercentageIndicator: "up",
    changePercentage: "Ingreso",
    month: "Marzo",
    name: "Carlos F.",
    color: Colors.deepPurple[100],
  ),
  TransactionModel(
    currentBalance: "\$5.000",
    changePercentage: "Ingreso",
    changePercentageIndicator: "up",
    month: "Marzo",
    name: "Christian E.",
    color: Colors.green[100],
  ),
  TransactionModel(
    currentBalance: "\$42.000",
    changePercentageIndicator: "down",
    changePercentage: "Egreso",
    month: "Marzo",
    name: "Leo Messi",
    color: Colors.orange[100],
  ),
];
