// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simulator/blueprint_models/charge_tile.dart';
import 'package:simulator/components/master_list_data.dart';

// ADD CHARGETILE WITH FLOATING ACTION BUTTON - ADD CHARGE TILE WITH FLOATING ACTION BUTTON

class AddChargeTileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int newUniqueid;
    int newChargeCode;
    String newChargeName;
    String newChargeLocation;
    String newChargeType;
    String newChargeUnit;
    String newChargeCurrency;
    double newBuyMinimum;
    double newBuyRate;
    double newBuyMaximum;
    DateTime newValidDateStart;
    DateTime newValidDateEnd;
    String newSupplierName;
    String newCustomerName;
    String newComment;

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          // .........................................2ND BUTTON INSIDE TO LOAD NEW TILE
          backgroundColor: Colors.red[800],
          child: Icon(Icons.add),
          onPressed: () {
            final chargetile = ChargeTile(
              uniqueid: newUniqueid = 123,
              chargecode: newChargeCode = 1000,
              chargename: newChargeName = 'test',
              chargelocation: newChargeLocation = 'test',
              chargetype: newChargeType = 'test',
              chargeunit: newChargeUnit = 'test',
              chargecurrency: newChargeCurrency = 'test',
              buyminimum: newBuyMinimum = 10.0,
              buyrate: newBuyRate = 0.01,
              buymaximum: newBuyMaximum = 100.0,
              validdatestart: newValidDateStart = DateTime(2021),
              validdateend: newValidDateEnd = DateTime(2021),
              suppliername: newSupplierName = 'new supplier',
              customername: newCustomerName = 'new customername',
              comment: newComment = 'comment',
            );
            Provider.of<MasterListData>(context).addChargeTile(
                newUniqueid,
                newChargeCode,
                newChargeName,
                newChargeLocation,
                newChargeType,
                newChargeUnit,
                newChargeCurrency,
                newBuyMinimum,
                newBuyRate,
                newBuyMaximum,
                newValidDateStart,
                newValidDateEnd,
                newSupplierName,
                newCustomerName,
                newComment);
            Navigator.pop(context);
          },
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                ),
                child: Text(
                  'Charge Tile Options',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.keyboard_return,
                  color: Colors.blue,
                  size: 24.0,
                ),
                title: const Text('Back', style: TextStyle(fontSize: 18.0)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('New Charge Tile'),
          backgroundColor: Colors.blue[800],
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.vpn_key,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Unique ID*',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newid) {
                        newUniqueid = newid as int;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.format_list_numbered,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Charge Code*',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newCode) {
                        newChargeCode = newCode as int;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.description,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Charge Name*',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newName) {
                        newChargeName = newName;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.location_pin,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Charge Location*',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newLocation) {
                        newChargeLocation = newLocation;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.merge_type,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Charge Type* Default/Ad Hoc',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newChargeType) {
                        newChargeType = newChargeType;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.image_aspect_ratio,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Charge Unit*',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newChargeUnit) {
                        newChargeUnit = newChargeUnit;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.attach_money,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Charge Currency* i.e. USD',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newCurrency) {
                        newChargeCurrency = newCurrency;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.minimize,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Minimum Buy Rate*',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newBuyMinimum) {
                        newBuyMinimum = newBuyMinimum;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.account_balance_wallet,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Buy Rate*  Unit Price',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newBuyRate) {
                        newBuyRate = newBuyRate;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.looks_one_outlined,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Maximum Buy Rate',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newMaximum) {
                        newMaximum = 'newMaximum';
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.today,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Valid Start Date',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newValidDateStart) {
                        newValidDateStart = 'newValidDateStart';
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.event,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Valid End Date',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newValidDateEnd) {
                        newValidDateEnd = 'newValidDateEnd';
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.shop_2,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Supplier Name',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newSupplierName) {
                        newSupplierName = 'newSupplierName';
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Customer Name',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newCustomerName) {
                        newCustomerName = 'newCustomerName';
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.comment,
                          color: Colors.blue,
                          size: 24.0,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Comment',
                      ),
                      textAlign: TextAlign.left,
                      autofocus: true,
                      onChanged: (newComment) {
                        newComment = 'newComment';
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
