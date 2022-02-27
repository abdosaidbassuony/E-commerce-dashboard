import 'package:flutter/material.dart';

import 'package:admin_panel/presentation/ui/mobile_ui/dashboard_screen/widget/status_card_widget.dart';

class TotalOrderAndTotalReturnsWidget extends StatelessWidget {
  final String? totalOrders;

  final String? numberOfReturn;

  const TotalOrderAndTotalReturnsWidget(
      {Key? key, this.numberOfReturn, this.totalOrders})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: StatusCardWidget(
            statusTitle: "Total Orders",
            statusValue: "${totalOrders!} Orders",
          ),
        ),
        Expanded(
          child: StatusCardWidget(
            statusTitle: "Total Returns",
            statusValue: "${numberOfReturn!} Orders",
          ),
        )
      ],
    );
  }
}
