import 'package:flutter/widgets.dart';
import 'controller/controllers_dash.dart';
import '/widgets/dashboard/router_dash.dart';
import '/widgets/dashboard/routes_dash.dart';

Navigator localNavigatorDash() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRouteDash,
  onGenerateRoute: generateRoute,
);
