import 'dart:html';

import 'package:flutter/material.dart';
import '/widgets/dashboard/pages/overview/widgets/revenue_section_large_dash.dart';
import '/widgets/dashboard/controller/controllers_dash.dart';
import '/widgets/dashboard/pages/overview/widgets/overview_cards_large.dart';
import '/widgets/dashboard/controller/menu_controller_dash.dart';
import '/widgets/dashboard/responsividade/responsividade_dash.dart';
import 'package:get/get.dart';
import '/widgets/Dashboard/app_bar/custom_text.dart';
import 'widgets/client_gerenciador.dart';
import 'widgets/overview_cards_medium.dart';
import 'widgets/overview_cards_small.dart';
import 'widgets/revenue_section_small.dart';

class OverViewPageDash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
              () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuControllerDash.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomSize(context))
                  OverViewCardsMediumScreenSizeDash()
                else
                  OverviewCardsLargeScreenDash()
              else
                OverViewCardsSmallScreenDash(),
              if (!ResponsiveWidget.isSmallScreen(context))
                RevenueSectionLargeDash()
              else
                RevenueSectionSmallDash(),
              ClientsList()
            ],
          ),
        ),
      ],
    );
  }
}
