import 'package:flottiecook/Controllers/bearertoken.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flottiecook/Controllers/globals.dart';

class AuthServices {
  static Future<http.Response> login(String email, String password) async {
    Map data = {"email": email, "password": password};
    var body = json.encode(data);
    var url = Uri.parse('${baseUrl}user/login');
    http.Response response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      final token = result['token'];
      await BearerToken.saveToken(token);
    }
    return response;
  }
}
