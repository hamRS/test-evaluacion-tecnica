import 'package:flutter_tech/core/errors/failures.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class RemoteClient {
  final http.Client client;

  const RemoteClient({
    required this.client,
  });

  Future<Map<String, dynamic>> get(String path) async {
    final url = Uri.parse(path);
    try {
      print(url);
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;
        return jsonResponse;
      }
    } catch (e) {
      print("Error On Fetching user list!");
    }
    return {};
  }
}
