import 'dart:io';

import 'package:admin_panel/presentation/ui/dashboard_screen/mobile_widget/dashboard_body_mobile_widget.dart';
import 'package:admin_panel/presentation/ui/dashboard_screen/web_widget/dashboard_body_web_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DashboardBodyWidget extends StatelessWidget {
  final String? totalOrders;

  final String? numberOfReturn;

  final String? averagePrice;

  const DashboardBodyWidget({
    Key? key,
    this.totalOrders,
    this.averagePrice,
    this.numberOfReturn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? DashboardBodyWebWidget(
            totalOrders: totalOrders,
            numberOfReturn: numberOfReturn,
            averagePrice: averagePrice)
        : DashboardBodyMobileWidget(
            totalOrders: totalOrders,
            numberOfReturn: numberOfReturn,
            averagePrice: averagePrice);
  }
}
