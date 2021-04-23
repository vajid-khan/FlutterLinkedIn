import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:linked_in/models/Post.dart';

class ApiClient {
  Future<List<Post>> getPost() async {
    var url = Uri.https("dummyapi.io", "data/api/post");
    final response =
        await http.get(url, headers: {'app-id': '605de3330304917449c54e7b'});
    if (response.statusCode == 200) {
      var content = convert.jsonDecode(response.body)['data'] as List;
      return content.map((e) {
        Owner owner = new Owner(
            e['owner']['id'],
            e['owner']['email'],
            e['owner']['title'],
            e['owner']['picture'],
            e['owner']['firstName'],
            e['owner']['lastName']);
        return new Post(owner, e['id'], e['image'], e['publishDate'], e['text'],
            e['likes'].toString());
      }).toList();
    }
    return [].toList();
  }
}
