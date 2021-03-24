import 'package:flutter/material.dart';

class HeaderDrawer extends StatelessWidget {
  final String title;

  const HeaderDrawer(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.grey,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Text(
            'Subtitle',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
