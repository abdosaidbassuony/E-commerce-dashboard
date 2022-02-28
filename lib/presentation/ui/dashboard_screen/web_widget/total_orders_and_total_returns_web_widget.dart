import 'package:admin_panel/presentation/ui/dashboard_screen/web_widget/status_card_web_widget.dart';
import 'package:flutter/material.dart';

class TotalOrderAndTotalReturnsWebWidget extends StatelessWidget {
  final String? totalOrders;

  final String? numberOfReturn;

  const TotalOrderAndTotalReturnsWebWidget(
      {Key? key, this.numberOfReturn, this.totalOrders})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StatusCardWebWidget(
          width: 400,
          height: 200,
          statusTitle: "Total Orders",
          statusValue: "${totalOrders!} Orders",
        ),
        StatusCardWebWidget(
          width: 400,
          height: 200,
          statusTitle: "Total Returns",
          statusValue: "${numberOfReturn!} Orders",
        )
      ],
    );
  }
}
