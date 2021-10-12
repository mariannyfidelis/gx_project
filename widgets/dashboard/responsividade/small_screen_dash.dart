import '../../../main.dart';
import '/utils/paleta_cores.dart';
import 'package:flutter/material.dart';
import '/widgets/dashboard/local_navigator_dash.dart';

class SmallScreenDash extends StatelessWidget {
  const SmallScreenDash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: localNavigatorDash());
  }
}
