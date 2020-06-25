import 'package:flutter/material.dart';
import 'package:survival_of_the_budget/widgets/chart.dart';
import 'package:survival_of_the_budget/widgets/user_transactions.dart';

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

  MyHomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: SafeArea(
          child: Column(
            children: <Widget>[Chart(), UserTransactions()],
          ),
        ));
  }
}
