import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final String id;
  final String title;
  final double expense;
  final String notes;
  final DateTime dateTime;

  TransactionCard(
      {@required this.id,
      @required this.title,
      @required this.expense,
      @required this.notes,
      @required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 10, right: 10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _ExpenseAmount(expense),
                  SizedBox(width: 15),
                  _TitleAndNotes(title, notes),
                ],
              ),
              _DateTime(dateTime)
            ],
          ),
        ),
      ),
    );
  }
}

class _ExpenseAmount extends StatelessWidget {
  final double expense;

  _ExpenseAmount(this.expense);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(width: 2.0, color: Colors.deepPurple[900])),
      child: Text(
        String.fromCharCodes(Runes('\u20B1')) + expense.toStringAsFixed(2),
        style: TextStyle(
            color: Colors.deepPurple[900],
            fontWeight: FontWeight.bold,
            fontSize: 15),
      ),
    );
  }
}

class _TitleAndNotes extends StatelessWidget {
  final String title;
  final String notes;

  _TitleAndNotes(this.title, this.notes);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[900]),
            ),
            Text(
              notes,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DateTime extends StatelessWidget {
  final DateTime dateTime;

  _DateTime(this.dateTime);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      alignment: Alignment.bottomRight,
      child: Text(
        DateFormat('MMMM dd, yyyy (EEEEE)').format(dateTime),
        style: TextStyle(
          fontSize: 10,
          fontStyle: FontStyle.italic,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
