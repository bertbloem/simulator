import 'package:flutter/foundation.dart';

import '../blueprint_models/charge_tile.dart';

// DATA DATA DATA DATA DATA DATA DATA DATA DATA DATA DATA DATA ML DATA ML DATA

class MasterListData extends ChangeNotifier {
  List<ChargeTile> _masterlist = [
    ChargeTile(
      uniqueid: 343535,
      chargecode: 0001,
      chargename: 'PickUp',
      chargelocation: 'Origin',
      chargetype: 'Default',
      chargeunit: 'CWT kg',
      chargecurrency: 'ZAR',
      buyminimum: 1000.00,
      buyrate: 0.10,
      buymaximum: 100.0,
      validdatestart: DateTime(2021),
      validdateend: DateTime(2021),
      suppliername: 'test supplier1223',
      customername: 'test customer name',
      comment: 'test comment',
    ),
    ChargeTile(
      uniqueid: 634000,
      chargecode: 0002,
      chargename: 'Airfreight',
      chargelocation: 'MainRun',
      chargetype: 'Ad hoc',
      chargeunit: 'CWT kg',
      chargecurrency: 'USD',
      buyminimum: 2000.00,
      buyrate: 0.20,
      buymaximum: 100.0,
      validdatestart: DateTime(2021),
      validdateend: DateTime(2021),
      suppliername: 'test supplier222',
      customername: 'test customer name222',
      comment: 'test comment222',
    ),
  ];

  get masterlist {
    return _masterlist;
  }

  int get chargeTileCount {
    return _masterlist.length;
  }

  void addChargeTile(
      int newUniqueid,
      int newChargeCode,
      String newChargeName,
      String newChargeLocation,
      String newChargeType,
      String newChargeUnit,
      String newChargeCurrency,
      double newBuyMinimum,
      double newBuyRate,
      double newBuyMaximum,
      DateTime newValidDateStart,
      DateTime newValidDateEnd,
      String newSupplierName,
      String newCustomerName,
      String newComment) {
    final chargeTile = ChargeTile(
      uniqueid: newUniqueid,
      chargecode: newChargeCode,
      chargename: newChargeName,
      chargelocation: newChargeLocation,
      chargetype: newChargeType,
      chargeunit: newChargeUnit,
      chargecurrency: newChargeCurrency,
      buyminimum: newBuyMinimum,
      buyrate: newBuyRate,
      buymaximum: newBuyMinimum,
      validdatestart: newValidDateStart,
      validdateend: newValidDateEnd,
      suppliername: newSupplierName,
      customername: newCustomerName,
      comment: newComment,
    );
    _masterlist.add(chargeTile);
    notifyListeners();
  }
}
