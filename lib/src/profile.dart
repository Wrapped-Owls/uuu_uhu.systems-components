import 'package:uuu_uhu.systems_components/src/mobile/profile_mobile.dart';
import 'package:uuu_uhu.systems_components/src/web/profile_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ProfileMobile("TTL1", "TTL2", "TTL3"),
      tablet: ProfileDesktop("TTL1", "TTL2", "TTL3"), 
    );
  }
}
