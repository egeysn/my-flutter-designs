import 'package:financial_design/constant.dart';
import 'package:financial_design/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/header.dart';
import 'components/new_transaction.dart';
import 'components/transaction_card.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  double _height = .55;
  double _opacity = .9;

  void _addTransaction() {
    setState(() {
      _height = .08;
      _opacity = 1;
    });
  }

  void _done() {
    setState(() {
      _height = .55;
      _opacity = 9;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.02),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.short_text),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          "Financal UI Design",
          style: headerTextStyle.copyWith(
            fontFamily: GoogleFonts.montserrat().toString(),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.person_outline), onPressed: () {})
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Header(
                addTransaction: _addTransaction,
              ),
              NewTransaction(
                opacity: _opacity,
                done: _done,
              ),
            ],
          ),
          TransactionCard(
            height: _height,
          ),
        ],
      ),
    );
  }
}
