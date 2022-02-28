import 'package:admin_panel/presentation/ui/dashboard_screen/web_widget/average_price_web_widget.dart';
import 'package:admin_panel/presentation/ui/dashboard_screen/web_widget/total_orders_and_total_returns_web_widget.dart';
import 'package:flutter/material.dart';

class DashboardDetailsWebWidget extends StatelessWidget {
  final String? totalOrders;

  final String? numberOfReturn;

  final String? averagePrice;

  const DashboardDetailsWebWidget(
      {Key? key, this.averagePrice, this.totalOrders, this.numberOfReturn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        TotalOrderAndTotalReturnsWebWidget(
            totalOrders: totalOrders!, numberOfReturn: numberOfReturn!),
        const SizedBox(
          height: 16,
        ),
        AveragePriceWebWidget(averagePrice: averagePrice!)
      ],
    );
  }
}
