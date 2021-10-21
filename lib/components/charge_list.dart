import 'package:flutter/material.dart';
import 'package:simulator/models/charge.dart';

import 'charge_tile.dart';

class ChargeList extends StatefulWidget {
  final List<Charge> charges;

  ChargeList(this.charges);

  @override
  _ChargeListState createState() => _ChargeListState();
}

class _ChargeListState extends State<ChargeList> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      // Use a delegate to build items as they're scrolled on screen.
      // was SliverChildListDelegate replaced List with Builder to fit Angela's ListView.builder example! I have to use this alternative as Angela's Todoey is not a sliver...
      delegate: SliverChildBuilderDelegate(
        (context, index) => ChargeTile(
            chargeTitle: widget.charges[index].name,
            isChecked: widget.charges[index].isDone,
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.charges[index].toggleDone();
              });
            }),
        childCount: widget.charges.length,
      ),
    );
  }
}
