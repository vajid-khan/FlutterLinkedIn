import 'User.dart';

class Post {
  final User owner;
  final String id, image, publishDate, text, likes;
  Post(
      this.owner, this.id, this.image, this.publishDate, this.text, this.likes);
}

