import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '/widgets/dashboard/app_bar/appBar_dash.dart';
import '/widgets/dashboard/menu_dash/side_menu_dash.dart';
import '/widgets/dashboard/controller/menu_controller_dash.dart';
import '/widgets/dashboard/responsividade/small_screen_dash.dart';
import '/widgets/dashboard/responsividade/large_screen_dash.dart';
import '/widgets/dashboard/responsividade/responsividade_dash.dart';

class Dashboard extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Get.put(MenuControllerDash());
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenuDash(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreenDash(),
        smallScreen: SmallScreenDash(),
      ),
    );
  }
}
