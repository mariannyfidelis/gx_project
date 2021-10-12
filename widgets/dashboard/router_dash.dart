import 'package:flutter/material.dart';
import '/widgets/dashboard/routes_dash.dart';
import '/widgets/dashboard/pages/clients_dash.dart';
import '/widgets/dashboard/pages/overview/overview_dash.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRouteDash:
      return _getPageRoute(OverViewPageDash());
    case ClientsPageRouteDash:
      return _getPageRoute(ClientsPageDash());
    default:
      return _getPageRoute(OverViewPageDash());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
