import 'package:flutter/material.dart';

class AddChargeScreen extends StatelessWidget {
  final Function addChargeCallback;

  AddChargeScreen(this.addChargeCallback);
  @override
  Widget build(BuildContext context) {
    String? newChargeTitle;

    return Container(
      color: Color(0xff737373),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add New Charge',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.blue[800],
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (newText) {
                newChargeTitle = newText;
              },
            ),
            TextButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.blue[800],
                ),
              ),
              onPressed: () {
                addChargeCallback(newChargeTitle);
              },
            ),
          ],
        ),
      ),
    );
  }
}
