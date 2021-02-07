import 'package:flutter/material.dart';

class ProfileTab1 extends StatelessWidget {
  final String title1;
  const ProfileTab1(this.title1);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Container(
        color: Colors.white,
        width: screenSize.width / 1.1,
        height: screenSize.height,
        child: Text(title1),
      ),
    );
  }
}
