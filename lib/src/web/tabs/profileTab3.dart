import 'package:flutter/material.dart';

class ProfileTab3 extends StatelessWidget {
  final String title3;
  const ProfileTab3(this.title3);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Container(
        color: Colors.white,
        width: screenSize.width / 1.1,
        height: screenSize.height,
        child: Text(title3),
      ),
    );
  }
}
