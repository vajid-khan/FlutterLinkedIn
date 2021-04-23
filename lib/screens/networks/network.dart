import 'package:flutter/material.dart';
import 'package:linked_in/screens/networks/user_card.dart';
import 'package:linked_in/widgets/appButtons.dart';

class Network extends StatefulWidget {
  @override
  _NetworkState createState() => _NetworkState();
}

class _NetworkState extends State<Network> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FullWidthButton(label: 'Manage my networks', onPress: () {}),
          SizedBox(
            height: 10,
          ),
          FullWidthButton(label: 'Invitations', onPress: () {}),
          SizedBox(
            height: 10,
          ),
          Wrap(
            children: [
              UserCard(),
              UserCard(),
              UserCard(),
              UserCard(),
              UserCard(),
              UserCard(),
              UserCard(),
              UserCard(),
            ],
            spacing: 10,
            runSpacing: 10,
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
