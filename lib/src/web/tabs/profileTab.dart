import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  final String title;
  const ProfileTab(this.title);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            color: Colors.white,
            width: screenSize.width / 1.1,
            height: screenSize.height,
            child: Text(title),
          ),
        ));
  }
}
