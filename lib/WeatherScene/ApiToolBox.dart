import 'dart:convert';

import 'package:http/http.dart';

class ApiToolBox {
  String time;
  bool pause = false;
  DateTime now;

  Future<void> getAPI() async {
    Response response =
        await get("http://worldtimeapi.org/api/timezone/Africa/Algiers");
    Map result = jsonDecode(response.body);
    String time = result["datetime"];
    String offset = result["utc_offset"].toString().substring(1, 3);

    now = DateTime.parse(time);
    now = now.add(Duration(hours: int.parse(offset)));
    this.time = now.toString();
  }

  void incrementTime() async {
      now = now.add(Duration(seconds: 1));
      await Future.delayed(Duration(seconds: 1));
  }
}
