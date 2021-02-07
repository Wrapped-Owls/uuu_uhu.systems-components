import 'package:flutter/material.dart';

class ProfileTab2 extends StatelessWidget {
  final String title2;
  const ProfileTab2(this.title2);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Container(
        color: Colors.white,
        width: screenSize.width / 1.1,
        height: screenSize.height,
        child: Text(title2),
      ),
    );
  }
}
