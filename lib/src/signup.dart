import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:uuu_uhu.systems_components/src/mobile/signup_mobile.dart';
import 'package:uuu_uhu.systems_components/src/web/signup_desktop.dart';

class Signup extends StatelessWidget {
  const Signup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SignupMobile(),
      tablet: SignupDesktop(),
    );
  }
}