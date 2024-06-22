import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:sant_piipaa/screen/model/datamodel.dart';

class DataController extends ChangeNotifier {
  List<DataModel> dataList = [];

  List<DataModel> get DataList => dataList;

  JsonProvider() {
    getData();
  }

  Future<void> getData() async {

    String Json = await rootBundle.loadString('assets/Json/data.json');
    // convert into object data
    dataList = dataList.map((e) => DataModel.fromJson(e)).toList();

    // Notify listeners after updating the data
    notifyListeners();
  }
}

