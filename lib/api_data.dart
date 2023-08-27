import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'My_Model.dart';
import 'constants.dart';

class MeetingsAPI {
  Future<List<DataMeeting>?> getData() async {
    http.Response response = await http.get(
        Uri.parse('http://192.168.1.200/NewsAPI.com/api/v1/Meeting'),
        headers: {'token': Consts.basUrlToken});
    List<DataMeeting>? result;
    List data;
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      data = jsonResponse["data"]["data"] as List;
      result = List<DataMeeting>.from(
          data.map((e) => DataMeeting.fromJson(e)).toList());
      print('Meeting : $data.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
    return result;
  }
}
