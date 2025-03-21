import 'bearertoken.dart';
import 'globals.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Auth {
  static Future<http.Response> Login(String email,String password) async {
    Map data = {};
    var body = json.encode(data);
    var url = Uri.parse(baseUrl + 'users/login');
    http.Response response = await http.post(url, body: body, headers : headers);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final token = data['token'];
      await BearerToken.saveToken(token);
    }
    return response;
  }
}