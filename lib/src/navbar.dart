import 'package:uuu_uhu.systems_components/src/web/navbar.desktop.dart';
import 'package:uuu_uhu.systems_components/src/mobile/navbar.mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavbarMobile(),
      tablet: NavbarDesktop(),
    );
  }
}
