import 'package:flutter/material.dart';
import 'package:survival_of_the_budget/models/TransactionModel.dart';
import 'package:survival_of_the_budget/widgets/input_form.dart';
import 'package:survival_of_the_budget/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<TransactionModel> _transactions = [
    TransactionModel(title: 'Utan ni sarah', expense: 56.00, notes: 'nothing')
  ];

  void _addTransaction(
      {@required String title,
      @required double expense,
      @required String notes}) {
    TransactionModel newTrans =
        TransactionModel(title: title, expense: expense, notes: notes);

    setState(() {
      _transactions.add(newTrans);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: <Widget>[
            InputForm(_addTransaction),
            TransactionList(_transactions)
          ],
        ),
      ),
    );
  }
}
