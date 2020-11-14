
import 'package:financial_design/providers/transaction.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({Key key, this.transaction}) : super(key: key);

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: transaction.color.withOpacity(.8),
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          child: Icon(
            transaction.iconData,
            size: 20,
            color: Colors.white,
          ),
        ),
        title: Text(
          transaction.title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          transaction.category,
          style: TextStyle(fontSize: 12),
        ),
        trailing: Text(
          '${transaction.value}',
          style: TextStyle(fontSize: 12, color: Colors.red),
        ),
      ),
    );
  }
}
