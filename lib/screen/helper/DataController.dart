import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:sant_piipaa/screen/model/datamodel.dart';
import 'package:translator/translator.dart';

class ApiService extends ChangeNotifier {
  List<DataModel> Data = [];
  List<String> translatedTexts = [];

  ApiService() {
    AllData();
  }

  Future<void> AllData() async {
    String apiData = await rootBundle.loadString('assets/Json/data.json');
    List json = jsonDecode(apiData);

    Data = json.map((e) => DataModel.fromJson(e)).toList();
    translatedTexts = List<String>.filled(Data.length, '', growable: false);

    notifyListeners();
  }

  final translator = GoogleTranslator();

  Future<void> translateText(String text, String languageCode, int index) async {
    Translation translation = await translator.translate(text, to: languageCode);
    translatedTexts[index] = translation.text;
    notifyListeners();
  }
}
