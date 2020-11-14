import 'package:flutter/material.dart';

class Transaction {
  final int id;
  final String title;
  final double value;
  final String category;
  final IconData iconData;
  final Color color;

  Transaction(
      {this.id,
      this.title,
      this.value,
      this.category,
      this.iconData,
      this.color});
}

class Transactions with ChangeNotifier {
  List<Transaction> _transactionList = [
    Transaction(
      id: 1,
      title: 'Dinner',
      value: 128.67,
      category: 'Meals',
      iconData: Icons.fastfood,
      color: Color(0xffe8505b),
    ),
    Transaction(
      id: 1,
      title: 'Dinner',
      value: 128.67,
      category: 'Meals',
      iconData: Icons.fastfood,
      color: Color(0xffe8505b),
    ),
    Transaction(
      id: 1,
      title: 'Dinner',
      value: 128.67,
      category: 'Meals',
      iconData: Icons.fastfood,
      color: Color(0xffe8505b),
    ),
    Transaction(
      id: 1,
      title: 'Dinner',
      value: 128.67,
      category: 'Meals',
      iconData: Icons.fastfood,
      color: Color(0xffe8505b),
    ),
    Transaction(
      id: 1,
      title: 'Dinner',
      value: 128.67,
      category: 'Meals',
      iconData: Icons.fastfood,
      color: Color(0xffe8505b),
    ),
    Transaction(
      id: 1,
      title: 'Dinner',
      value: 128.67,
      category: 'Meals',
      iconData: Icons.fastfood,
      color: Color(0xffe8505b),
    ),
    Transaction(
      id: 1,
      title: 'Dinner',
      value: 128.67,
      category: 'Meals',
      iconData: Icons.fastfood,
      color: Color(0xffe8505b),
    )
  ];

  List<Transaction> getList() {
    return _transactionList;
  }
}
