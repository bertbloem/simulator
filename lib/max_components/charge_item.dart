class ChargeItem {
  ChargeItem({
    required this.code,
    required this.description,
    required this.location,
    required this.unit,
    required this.currency,
    required this.minimum,
    required this.buyRate,
    this.maximum,
    this.addtlID,
    this.customerID,
    this.customerName,
    this.supplierID,
    this.supplierName,
    this.comment,
  });

  int code;
  String description;
  String location;
  String unit;
  String currency;
  double buyRate;
  double minimum;
  double? maximum;
  String? addtlID;
  String? customerID;
  String? customerName;
  String? supplierID;
  String? supplierName;
  String? comment;
}
