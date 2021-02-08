import 'package:uuu_uhu.systems_components/src/mobile/login.mobile.dart';
import 'package:uuu_uhu.systems_components/src/web/login.desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: LogInMobile(),
      tablet: LoginDesktop(),
    );
  }
}
