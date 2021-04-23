import 'package:flutter/material.dart';
import 'package:linked_in/models/Post.dart';
import 'package:linked_in/widgets/appButtons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostCard extends StatelessWidget {
  final Post post;
  PostCard(this.post);

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.save),
                    title: Text('Save'),
                    onTap: () => {}),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: Icon(Icons.remove_red_eye_outlined),
                  title: Text('Who else can this post?'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: Icon(Icons.flag),
                  title: Text('Report'),
                  onTap: () => {},
                ),
              ],
            ),
          );
        });
  }

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
                            backgroundColor: Colors.grey[350],
                            minRadius: 30),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "${post.owner.firstName} ${post.owner.lastName}",
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "${post.publishDate}",
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          margin: EdgeInsets.only(left: 10),
                        ),
                      ],
                    ),
                  ),
                     AppButton(
                      label: "",
                      icon: FontAwesomeIcons.chevronDown,
                      onPress: () {
                        _settingModalBottomSheet(context);
                      },
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
              child: Row(
				//   crossAxisAlignment: CrossAxisAlignment.stretch,
				  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                        Container(
							child: FaIcon(
								FontAwesomeIcons.thumbsUp,
                          size: 15,
                          color: Colors.blue,
                        ),
						margin: EdgeInsets.symmetric(horizontal: 5),
						),
						Container(
							child: FaIcon(
								FontAwesomeIcons.heart,
                          size: 15,
                          color: Colors.red,
                        ),
						margin: EdgeInsets.symmetric(horizontal: 5),
						),
						Container(
							child: FaIcon(
								FontAwesomeIcons.share,
                          size: 15,
                          color: Colors.blue,
                        ),
						margin: EdgeInsets.symmetric(horizontal: 5),
						),
						Text('147', style: TextStyle(fontSize: 10),)
                    ],
                  ),
				  Text('4 comments')
                ],
              ),
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
                        icon: FontAwesomeIcons.comments,
                        onPress: () {})),
                Flexible(
                    child: AppButton(
                        label: "Share",
                        icon: FontAwesomeIcons.share,
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
