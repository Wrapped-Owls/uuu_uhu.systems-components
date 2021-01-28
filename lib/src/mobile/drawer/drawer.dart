import 'package:flutter/material.dart';
import 'package:uuu_uhu.systems_components/src/mobile/drawer/drawer_header.dart';
import 'package:uuu_uhu.systems_components/src/mobile/drawer/drawer_item.dart';

class Drawer extends StatelessWidget {
  const Drawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color:Colors.black12, blurRadius: 16)]),
        child: Column(
          children: <Widget>[
            HeaderDrawer(),
            DrawerItem('Episodes', Icons.videocam),
            DrawerItem('About', Icons.help),
          ],
        ),
        
      
    );
  }
}