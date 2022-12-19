import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  late String location;
  late String time;
  late String flag;
  late String url;

  WorldTime({ required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    print('getTime called');

    try {
      var url = Uri.https('worldtimeapi.org', '/api/timezones/${this.url}');
      var response = await http.get(url);
      // print('Response: ${response.body}');
      Map data = jsonDecode(response.body);
      print(data);
      String datetime = data['datetime'];
      String offset = data['utc_offset'];

      DateTime now = DateTime.parse(datetime);
      now.add(Duration(hours: int.parse(offset.substring(1, 3))));
      print(now);
      time = '$now';
    }catch (e) {
      print('Caught Error: $e');
      time = 'Could not get time data';
    }
  }

}