import 'package:simulator/max_components/charge_item.dart';

class Data {
  static final List<ChargeItem> masterList = <ChargeItem>[
    ChargeItem(
      code: 0001,
      description: 'fromdata_Name1',
      location: 'Origin',
      unit: 'Chg kg',
      currency: 'USD',
      buyRate: 111.11,
      minimum: 10.00,
    ),
  ];
}
