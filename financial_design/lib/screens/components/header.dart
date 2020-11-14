import 'package:financial_design/models/expense.dart';
import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;

import '../../size_config.dart';
import 'expense_chart.dart';

class Header extends StatelessWidget {
  const Header({Key key, this.addTransaction}) : super(key: key);
  final Function addTransaction;

  static List<charts.Series<Expense, String>> _series = [
    charts.Series<Expense, String>(
        id: 'Expense',
        domainFn: (expense, int) => expense.category,
        measureFn: (expense, _) => expense.value,
        labelAccessorFn: (expense, _) => '\$${expense.value}',
        colorFn: (expense, _) => charts.ColorUtil.fromDartColor(expense.color),
        data: [
          Expense('Busines', 149.99, Colors.red),
          Expense("Meals", 146.3, Colors.yellow),
          Expense("Test", 146.3, SizeConfig.primaryColor),
        ])
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.screenHeight * .4,
      color: SizeConfig.primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            child: ExpenseChart(
              seriesList: _series,
              animate: true,
            ),
          ),
          SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlineButton(
                onPressed: addTransaction,
                borderSide: BorderSide(width: 1, color: Colors.white),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Container(
                  width: 124,
                  child: Row(
                    children: [
                      Icon(
                        Icons.playlist_add,
                        color: Colors.white,
                      ),
                      SizedBox(width: 4),
                      Text("Add Transaction",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              FlatButton(
                color: Colors.white,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 72,
                      child: Text("Reports",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Reports",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
