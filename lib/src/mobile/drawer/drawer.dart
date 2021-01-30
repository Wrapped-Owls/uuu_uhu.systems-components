import 'package:flutter/material.dart';
import 'package:uuu_uhu.systems_components/friggraynd_icons.dart';
import 'package:uuu_uhu.systems_components/src/mobile/drawer/drawer_header.dart';
import 'package:uuu_uhu.systems_components/src/mobile/drawer/drawer_item.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
      ),
      child: Column(
        children: <Widget>[
          HeaderDrawer('Drawer Title'),
          DrawerItem('Episodes', FriggrayndIcons.friggraynd_cvheip),
          DrawerItem('About', FriggrayndIcons.friggraynd_enemies),
          DrawerItem('Random', FriggrayndIcons.friggraynd_nautilus),
          DrawerItem('Test', FriggrayndIcons.friggraynd_squid),
        ],
      ),
    );
  }
}
