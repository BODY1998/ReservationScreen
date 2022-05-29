import 'dart:convert' as convert;
import 'package:flutter_app_test/data/reservation_model.dart';
import 'package:http/http.dart' as http;
import '../data/reservation_model.dart';

class CousreApi {
  Future<ReservationModel?> getCourseInfo() async {
    try {
      var url = Uri.parse(
          'https://run.mocky.io/v3/3a1ec9ff-6a95-43cf-8be7-f5daa2122a34');

      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        return ReservationModel.fromJson(jsonResponse);
      } else {
        return null;
      }
    } catch (ex) {
      print('ReservationModel failed with: $ex');
      return null;
    }
  }
}
