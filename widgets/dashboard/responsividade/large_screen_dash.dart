import '/utils/paleta_cores.dart';
import 'package:flutter/material.dart';
import '/widgets/dashboard/local_navigator_dash.dart';
import '/widgets/dashboard/menu_dash/side_menu_dash.dart';

class LargeScreenDash extends StatelessWidget {
  const LargeScreenDash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SideMenuDash(),
        ),
        Expanded(
          flex: 5,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: localNavigatorDash()),
        ),
      ],
    );
  }
}
