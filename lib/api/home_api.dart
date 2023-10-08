import 'package:http/http.dart' as http;
import 'dart:convert';

class PostApi {
  final String baseUrl;

  PostApi({
    required this.baseUrl,
  });

  Future<List<Map<String, dynamic>>> fetchPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Failed To fetch posts');
    }
  }
}
