import 'package:flutter/cupertino.dart';
import 'package:flutter_app_test/data/reservation_model.dart';
import 'package:flutter_app_test/services/course_api.dart';
import 'package:provider/provider.dart';

class ReservationProvider with ChangeNotifier {
  final CousreApi _cousreApi;
  ReservationProvider(this._cousreApi) {
    getData();
  }
  bool get isLoadingData => _isLoadingData;
  bool _isLoadingData = true;
  ReservationModel? courseInfo;

  getData() async {
    courseInfo = await _cousreApi.getCourseInfo();
    _isLoadingData = false;
    notifyListeners();
  }
}
