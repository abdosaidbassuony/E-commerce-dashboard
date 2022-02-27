import 'package:flutter/material.dart';

import 'package:admin_panel/presentation/ui/mobile_ui/dashboard_screen/widget/average_price_widget.dart';
import 'package:admin_panel/presentation/ui/mobile_ui/dashboard_screen/widget/total_orders_and_total_returns.dart';

class DashboardDetailsWidget extends StatelessWidget {
  final String? totalOrders;

  final String? numberOfReturn;

  final String? averagePrice;

  const DashboardDetailsWidget(
      {Key? key, this.averagePrice, this.totalOrders, this.numberOfReturn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TotalOrderAndTotalReturnsWidget(
            totalOrders: totalOrders!, numberOfReturn: numberOfReturn!),
        const SizedBox(
          height: 16,
        ),
        AveragePriceWidget(averagePrice: averagePrice!)
      ],
    );
  }
}
