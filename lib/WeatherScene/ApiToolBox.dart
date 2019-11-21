import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class ApiToolBox {

  String time;

  Future<void> getAPI() async {
    Response response =
        await get("http://worldtimeapi.org/api/timezone/Africa/Algiers");
    Map result = jsonDecode(response.body);
    String time = result["datetime"];
    String offset = result["utc_offset"].toString().substring(1, 3);

    DateTime now = DateTime.parse(time);
    now = now.add(Duration(hours: int.parse(offset)));
    this.time = now.toString();
    print("time "+ time);
    print("now "+now.toString());
    print("offset: "+offset);
  }
}
