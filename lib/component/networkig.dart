
import 'dart:convert';

import 'package:http/http.dart'as http;

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var data = response.body;
      print('you successfully got the data');

      return jsonDecode(data);
    }
    else {
      print(response.statusCode);
      print('unable to fetch data');
    }
  }
}
