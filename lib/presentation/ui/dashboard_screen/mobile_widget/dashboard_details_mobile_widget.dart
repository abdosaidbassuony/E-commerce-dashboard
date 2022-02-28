import 'package:admin_panel/presentation/ui/dashboard_screen/mobile_widget/average_price_mobile_widget.dart';
import 'package:admin_panel/presentation/ui/dashboard_screen/mobile_widget/total_orders_and_total_returns_mobile_widget.dart';
import 'package:flutter/material.dart';

class DashboardDetailsMobileWidget extends StatelessWidget {
  final String? totalOrders;

  final String? numberOfReturn;

  final String? averagePrice;

  const DashboardDetailsMobileWidget(
      {Key? key, this.averagePrice, this.totalOrders, this.numberOfReturn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TotalOrderAndTotalReturnsMobileWidget(
            totalOrders: totalOrders!, numberOfReturn: numberOfReturn!),
        const SizedBox(
          height: 16,
        ),
        AveragePriceMobileWidget(averagePrice: averagePrice!)
      ],
    );
  }
}
