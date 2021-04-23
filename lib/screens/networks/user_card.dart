import 'package:flutter/material.dart';
import 'package:linked_in/widgets/appButtons.dart';

class UserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: 250,
      width: width * 0.47,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: 75,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.green),
            ),
          ),
          Positioned(
            top: 35,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('User Name'),
                Text('Designation'),
                OutlineAppButton(label: 'Connect', onPress: () {})
              ],
            ),
          ),
        ],
        alignment: Alignment.topCenter,
      ),
    );
  }
}
