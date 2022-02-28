import 'package:admin_panel/presentation/ui/dashboard_screen/mobile_widget/status_card_mobile_widget.dart';
import 'package:flutter/material.dart';

class TotalOrderAndTotalReturnsMobileWidget extends StatelessWidget {
  final String? totalOrders;

  final String? numberOfReturn;

  const TotalOrderAndTotalReturnsMobileWidget(
      {Key? key, this.numberOfReturn, this.totalOrders})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: StatusCardMobileWidget(
            statusTitle: "Total Orders",
            statusValue: "${totalOrders!} Orders",
          ),
        ),
        Expanded(
          child: StatusCardMobileWidget(
            statusTitle: "Total Returns",
            statusValue: "${numberOfReturn!} Orders",
          ),
        )
      ],
    );
  }
}
