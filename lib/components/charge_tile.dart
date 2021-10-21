import 'package:flutter/material.dart';
//TaskTile in Angela's Todoey example

class ChargeTile extends StatelessWidget {
  final bool isChecked;
  final String chargeTitle;
  final Function(bool?)? checkboxCallback;

  //TODO add charge_item properties found under max Components to ChargeTile...yes/no?

  ChargeTile(
      {required this.isChecked,
      required this.chargeTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        chargeTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.blue[800],
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
