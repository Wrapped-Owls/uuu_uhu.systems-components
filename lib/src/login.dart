import 'package:uuu_uhu.systems_components/src/mobile/login_mobile.dart';
import 'package:uuu_uhu.systems_components/src/web/login_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class login extends StatelessWidget {
  const login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: logInMobile(),
      tablet: loginDesktop(),
    );
  }
}
