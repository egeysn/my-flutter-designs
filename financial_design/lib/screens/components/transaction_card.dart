import 'package:financial_design/providers/transaction.dart';
import 'package:financial_design/screens/components/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../size_config.dart';

class TransactionCard extends StatefulWidget {
  final double height;
  TransactionCard({Key key, this.height}) : super(key: key);

  @override
  _TransactionCardState createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  int _date = 16;

  @override
  Widget build(BuildContext context) {
    final providedTransactions = Provider.of<Transactions>(context);
    var height = MediaQuery.of(context).size.height;
    return Positioned(
      bottom: 0,
      left: SizeConfig.screenWidth * .03,
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        width: SizeConfig.screenWidth * .94,
        height: SizeConfig.screenHeight * widget.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 60,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 12),
                    child: Text(
                      'See All',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Icon(Icons.arrow_left),
                          onTap: () {
                            setState(() {
                              _date--;
                            });
                          },
                        ),
                        Text(
                          '$_date ${DateFormat('MMM yyyy').format(DateTime.now())}',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          child: Icon(Icons.arrow_right),
                          onTap: () {
                            setState(() {
                              _date++;
                            });
                          },
                        )
                      ]),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: providedTransactions.getList().length,
                itemBuilder: (context, index) {
                  return TransactionItem(
                    transaction: providedTransactions.getList()[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
