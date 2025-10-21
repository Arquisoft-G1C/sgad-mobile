//Aquí va la lógica de comunicación entre app Flutter y el backend
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static const String baseUrl = "http://localhost:8000"; // o tu IP/Docker host

  static Future<bool> login(String user, String pass) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'username': user, 'password': pass}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print("Token JWT: ${data['access_token']}");
      return true;
    } else {
      return false;
    }
  }
}
