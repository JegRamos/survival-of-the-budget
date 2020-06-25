import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputForm extends StatelessWidget {
  final Function addTrans;
  InputForm(this.addTrans);

  final TextEditingController titleController = TextEditingController();
  final TextEditingController expenseController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 45,
                  child: TextField(
                    controller: titleController,
                    style:
                        TextStyle(fontSize: 13, color: Colors.deepPurple[900]),
                    decoration: InputDecoration(
                        labelText: 'Title',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.info)),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 45,
                  child: TextField(
                    controller: expenseController,
                    keyboardType: TextInputType.number,
                    style:
                        TextStyle(fontSize: 13, color: Colors.deepPurple[900]),
                    decoration: InputDecoration(
                        labelText: 'Expense',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.monetization_on)),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 45,
                  child: TextField(
                    controller: notesController,
                    style:
                        TextStyle(fontSize: 13, color: Colors.deepPurple[900]),
                    decoration: InputDecoration(
                        labelText: 'Notes',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.speaker_notes)),
                  ),
                ),
                SizedBox(height: 20),
                Divider(height: .2),
                SizedBox(height: 20),
                FlatButton(
                  onPressed: () {
                    addTrans(
                        title: titleController.text,
                        expense: double.parse(expenseController.text),
                        notes: notesController.text);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.green[600],
                  textColor: Colors.white,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.save),
                      SizedBox(width: 5),
                      Text('SAVE')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
