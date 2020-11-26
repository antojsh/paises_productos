import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpManager {
  Future<dynamic> get(url) async {
    final headers = await _getHeaders();
    final response = await http.Client().get(url, headers: headers);
    final parsed = jsonDecode(response.body);

    return parsed;
  }

  Future<dynamic> put(url) async {
    final headers = await _getHeaders();
    final response = await http.Client().put(url, headers: headers);
    final parsed = jsonDecode(response.body);
    return parsed;
  }

  Future<dynamic> post(url, data) async {
    final headers = await _getHeaders();
    final response =
        await http.Client().post(url, body: jsonEncode(data), headers: headers);
    final parsed = jsonDecode(response.body);

    return parsed;
  }

  _getHeaders() async {
    return {'Content-Type': 'application/json; charset=UTF-8'};
  }
}
