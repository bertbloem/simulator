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
                  'Charge Name:'
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
    return Container(
      padding: (EdgeInsets.all(20.0)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Unique ID:',
              ),
              Text(
                'Charge Code:',
              ),
              Text(
                'Charge Name:',
              ),
              Text(
                'Charge Loction:',
              ),
              Text(
                'Charge Type:',
              ),
              Text(
                'Charge Unit:',
              ),
              Text(
                'Charge Currency:',
              ),
              Text(
                'Buy Minimum:',
              ),
              Text(
                'Buy Rate:',
              ),
              Text(
                'Buy Maximum:',
              ),
              Text(
                'Valid Date Start:',
              ),
              Text(
                'Valid Date End:',
              ),
              Text(
                'Supplier Name:',
              ),
              Text(
                'Customer Name:',
              ),
              Text(
                'Comment:',
              ),
            ],
          ),
          SizedBox(width: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$uniqueid',
              ),
              Text(
                '$chargecode',
              ),
              Text(
                chargename,
              ),
              Text(
                chargelocation,
              ),
              Text(
                chargetype,
              ),
              Text(
                chargeunit,
              ),
              Text(
                chargecurrency,
              ),
              Text(
                '$buyminimum',
              ),
              Text(
                '$buyrate',
              ),
              Text(
                '$buymaximum',
              ),
              Text(
                '$validdatestart',
              ),
              Text(
                '$validdateend',
              ),
              Text(
                '$suppliername!',
              ),
              Text(
                '$customername!',
              ),
              Text(
                '$comment!',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
