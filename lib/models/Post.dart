class Post {
  final Owner owner;
  final String id, image, publishDate, text, likes;
  Post(
      this.owner, this.id, this.image, this.publishDate, this.text, this.likes);
}

class Owner {
  final String id, email, title, picture, firstName, lastName;
  Owner(this.id, this.email, this.title, this.picture, this.firstName,
      this.lastName);
}
