import 'package:flutter/foundation.dart';

class DataModel {

  int? Id;
  String? Sanskrit;
  String? Gujarati;
  String? English;
  String? Hindi;


  DataModel(
      {
        this.Id,
        this.Gujarati,
        this.English,
        this.Hindi,
        this.Sanskrit,
  });

  factory DataModel.fromJson(json)
  {
    return DataModel(
      Id: json['Id'],
      Gujarati: json['Gujarati'],
      English: json['English'],
      Sanskrit: json['Sanskrit'],
      Hindi: json['Hindi'],
    );
  }
}