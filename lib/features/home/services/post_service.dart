import 'package:unity_app/api/home_api.dart';
import 'package:unity_app/models/post.dart';

class PostService {
  final PostApi _postApi;

  PostService(this._postApi);

  Future<List<Post>> fetchPosts() async {
    final apiResponse = await _postApi.fetchPosts();
    print(apiResponse);
    final posts = apiResponse.map((data) => Post.fromMap(data)).toList();
    return posts;
  }
}
