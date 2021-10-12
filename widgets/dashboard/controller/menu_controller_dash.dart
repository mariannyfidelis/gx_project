import '../routes_dash.dart';
import 'package:get/get.dart';
import '/utils/paleta_cores.dart';
import 'package:flutter/material.dart';

class MenuControllerDash extends GetxController {
  static MenuControllerDash instance = Get.find();

  var activeItem = OverViewPageRouteDash.obs;

  var hoverItem = ''.obs;

  changeActiveitemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverViewPageRouteDash:
        return _customIcon(Icons.trending_up, itemName);
      case ClientsPageRouteDash:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case AuthenticationPageRouteDash:
        return _customIcon(Icons.exit_to_app, itemName);

      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName))
      return Icon(
        icon,
        size: 22,
        color: PaletaCores.corDark,
      );
    return Icon(
      icon,
      color:
      isHovering(itemName) ? PaletaCores.corDark : PaletaCores.corLightGrey,
    );
  }
}
