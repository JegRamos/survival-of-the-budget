import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

class TransactionModel {
  String _id;
  String get getId => _id;

  double expense;
  String title;
  String notes;
  DateTime dateTime;

  TransactionModel({
    @required this.title,
    @required this.expense,
    this.notes = '',
  }) {
    this._id = Uuid().v1();
    this.dateTime = DateTime.now();
  }
}
