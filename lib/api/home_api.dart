import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:unity_app/config/home_config.dart';

class PostApi {
  Future<List<Map<String, dynamic>>> fetchPosts() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/post/allPosts'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.cast<Map<String, dynamic>>();
      } else {
        throw Exception('Failed To fetch posts');
      }
    } catch (error) {
      throw Exception('Failed PostApi');
    }
  }
}
