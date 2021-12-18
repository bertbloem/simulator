import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

//  BLUEPRINT OF CHARGETILE

class ChargeTile extends StatelessWidget {
  ChargeTile({
    required this.uniqueid,
    required this.chargecode,
    required this.chargename,
    required this.chargelocation,
    required this.chargetype,
    required this.chargeunit,
    required this.chargecurrency,
    required this.buyminimum,
    required this.buyrate,
    this.buymaximum,
    required this.validdatestart,
    required this.validdateend,
    this.suppliername,
    this.customername,
    this.comment,
  });
  final int uniqueid;
  final int chargecode;
  final String chargename;
  final String chargelocation;
  final String chargetype;
  final String chargeunit;
  final String chargecurrency;
  final double buyminimum;
  final double buyrate;
  final double? buymaximum;
  final DateTime validdatestart;
  final DateTime validdateend;
  final String? suppliername;
  final String? customername;
  final String? comment;

  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(title: Text(uniqueid.toString()), children: [
      Container(
        padding: (EdgeInsets.all(20.0)),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Label(
                  'Unique ID:',
                ),
                Label(
                  'Charge Code:',
                ),
                Label(
                  'Charge Name:',
                ),
                Label(
                  'Charge Loction:',
                ),
                Label(
                  'Charge Type:',
                ),
                Label(
                  'Charge Unit:',
                ),
                Label(
                  'Charge Currency:',
                ),
                Label(
                  'Buy Minimum:',
                ),
                Label(
                  'Buy Rate:',
                ),
                Label(
                  'Buy Maximum:',
                ),
                Label(
                  'Valid Date Start:',
                ),
                Label(
                  'Valid Date End:',
                ),
                Label(
                  'Supplier Name:',
                ),
                Label(
                  'Customer Name:',
                ),
                Label(
                  'Comment:',
                ),
              ],
            ),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Data(
                  '$uniqueid',
                ),
                Data(
                  '$chargecode',
                ),
                Data(
                  chargename,
                ),
                Data(
                  chargelocation,
                ),
                Data(
                  chargetype,
                ),
                Data(
                  chargeunit,
                ),
                Data(
                  chargecurrency,
                ),
                Data(
                  '$buyminimum',
                ),
                Data(
                  '$buyrate',
                ),
                Data(
                  '$buymaximum',
                ),
                Data(
                  '$validdatestart',
                ),
                Data(
                  '$validdateend',
                ),
                Data(
                  '$suppliername!',
                ),
                Data(
                  '$customername!',
                ),
                Data(
                  '$comment!',
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}

class Label extends StatelessWidget {
  final String label;
  const Label(this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}

class Data extends StatelessWidget {
  final String data;
  const Data(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data);
  }
}
