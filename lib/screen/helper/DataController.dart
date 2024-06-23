

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:sant_piipaa/screen/model/datamodel.dart';
import 'package:translator/translator.dart';



class ApiService extends ChangeNotifier {

  List <DataModel> Data =[];
  ApiService()
  {
    AllData();
  }
  Future<void> AllData()
  async {
    String apiData =await rootBundle.loadString('assets/Json/data.json');
    List json = jsonDecode(apiData);


    Data =json.map((e) => DataModel.fromJson(e)).toList();

    notifyListeners();

  }


  final translator = GoogleTranslator();
  String _translatedText = '';

  String get translatedText => _translatedText;

  Future<void> translateText(String text, String LanguageCode) async {
    Translation translation = await translator.translate(text, to: LanguageCode);
    _translatedText = translation.text;
    notifyListeners();
  }

}









