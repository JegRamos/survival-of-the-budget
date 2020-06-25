import 'package:flutter/material.dart';
import 'package:survival_of_the_budget/models/TransactionModel.dart';
import 'package:survival_of_the_budget/widgets/chart.dart';
import 'package:survival_of_the_budget/widgets/transaction_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Survival of the Budget',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final transactions = [
    TransactionModel(
        title: 'Utang kay Sarah',
        expense: 134.00,
        notes: 'Unpaid nanaman. Ano ba yan guys. Please wag ganayan'),
    TransactionModel(
        title: 'Utang kay Si',
        expense: 160.00,
        notes:
            'Unpaid Dami mo sinasabi langya naman yan ayoko na asdasd sdmasdklasjkld. \n na escape ba to, lols')
  ];

  MyHomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Chart(),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ...(transactions.map((tr) => TransactionCard(
                          id: tr.getId,
                          title: tr.title,
                          notes: tr.notes,
                          expense: tr.expense,
                          dateTime: tr.dateTime,
                        )))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
