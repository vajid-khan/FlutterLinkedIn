import 'package:flutter/material.dart';
import 'package:linked_in/api/Api.dart';
import 'package:linked_in/models/Post.dart';
import 'package:linked_in/screens/home/post_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: (new ApiClient()).getPost(),
          builder: (context, snapShot) {
            if (snapShot.hasData) {
              return ListView.builder(
                  itemCount: snapShot.data.length,
                  itemBuilder: (context, index) {
                    Post post = snapShot.data[index];
                    return PostCard(post);
                  });
            } else {
              return Container(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
