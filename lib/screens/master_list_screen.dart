import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simulator/blueprint_models/charge_tile.dart';
import 'package:simulator/components/master_list_data.dart';

import 'add_charge_tile_screen.dart';

import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

// LIST SCREEN LIST SCREEN LIST SCREEN LIST SCREEN LIST SCREEN LIST SCREEN LIST SCREEN

class MasterListScreen extends StatelessWidget {
  Widget buildButtomSheet(BuildContext context) {
    return AddChargeTileScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //                                         FIRST TOP BUTTON TO OPEN ADD CHARGE TILE
        backgroundColor: Colors.blue[800],
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: buildButtomSheet,
          );
        },
      ),

      // NB! No appbar provided to the Scaffold, only a body with a
      // CustomScrollView.
      body: Consumer<MasterListData>(
        // CONSUMER! CONSUMER WIDGET!
        // chargedata = Provider.of<MasterListData>(context) and is replaced by Consumer
        builder: (context, chargeData, child) {
          ChargeTile myChargeTile;
          return CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                title: Text('Mater List [${chargeData.chargeTileCount}]'),
                centerTitle: true,
                pinned: true,
                floating: true,
                expandedHeight: 185,
                backgroundColor: Colors.blue[800],
                flexibleSpace: const FlexibleSpaceBar(
                  background: Image(
                      image: AssetImage('assets/randomlist_youtube.jpeg'),
                      fit: BoxFit.cover),
                ),
              ),
              // Next, create a SliverList which is a Listview but for slivers = sliders

              SliverList(
                // Use a delegate to build items as they're scrolled on screen.
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ChargeTile(
                    uniqueid: chargeData.masterlist[index].uniqueid,
                    chargecode: chargeData.masterlist[index].chargecode,
                    chargename: chargeData.masterlist[index].chargename,
                    chargelocation: chargeData.masterlist[index].chargelocation,
                    chargetype: chargeData.masterlist[index].chargetype,
                    chargeunit: chargeData.masterlist[index].chargeunit,
                    chargecurrency: chargeData.masterlist[index].chargecurrency,
                    buyminimum: chargeData.masterlist[index].buyminimum,
                    buymaximum: chargeData.masterlist[index].buymaximum,
                    buyrate: chargeData.masterlist[index].buyrate,
                    validdatestart: chargeData.masterlist[index].validdatestart,
                    validdateend: chargeData.masterlist[index].validdateend,
                    suppliername: chargeData.masterlist[index].suppliername,
                    customername: chargeData.masterlist[index].customername,
                    comment: chargeData.masterlist[index].comment,
                  ),
                  childCount: chargeData.chargeTileCount,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
