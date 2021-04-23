import 'package:flutter/material.dart';
import 'package:linked_in/models/Post.dart';
import 'package:linked_in/widgets/appButtons.dart';

class PostCard extends StatelessWidget {
  final Post post;
  PostCard(this.post);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.white),
        margin: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        CircleAvatar(
                            foregroundImage: NetworkImage(post.owner.picture),
                            backgroundColor: Colors.amber,
                            minRadius: 30),
                        Container(
                          child: Text(
                            "${post.owner.firstName} ${post.owner.lastName}",
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          margin: EdgeInsets.only(left: 10),
                        ),
                      ],
                    ),
                  ),
                  AppButton(
                    label: "",
                    icon: Icons.open_in_browser,
                    onPress: () {},
                    size: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                post.text,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Container(
                  child: Image.network(
                    post.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.grey[350]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                    child: AppButton(
                        label: "Like", icon: Icons.thumb_up, onPress: () {})),
                Flexible(
                    child: AppButton(
                        label: "Comment",
                        icon: Icons.add_comment,
                        onPress: () {})),
                Flexible(
                    child: AppButton(
                        label: "Share",
                        icon: Icons.share_outlined,
                        onPress: () {})),
                Flexible(
                    child: AppButton(
                        label: "Send", icon: Icons.send, onPress: () {})),
              ],
            )
          ],
        ));
  }
}