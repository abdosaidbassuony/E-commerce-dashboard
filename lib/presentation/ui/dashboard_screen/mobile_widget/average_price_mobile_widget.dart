import 'package:admin_panel/presentation/ui/dashboard_screen/mobile_widget/status_card_mobile_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:admin_panel/presentation/bloc/dashboard_bloc/dashboard_bloc.dart';

class AveragePriceMobileWidget extends StatelessWidget {
  final String? averagePrice;

  const AveragePriceMobileWidget({Key? key, this.averagePrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: StatusCardMobileWidget(
            valueTextSize: 16,
            titleTextSize: 23,
            statusTitle: "Average Price",
            statusValue: "\$${averagePrice!}",
          ),
        ),
        Expanded(
          child: StatusCardMobileWidget(
            onTap: () => BlocProvider.of<DashboardBloc>(context)
                .add(OpenGraphScreenEvent()),
            titleTextSize: 22,
            valueTextSize: 14,
            statusTitle: "Orders Graph",
            statusValue: "",
            isIcon: true,
          ),
        ),
      ],
    );
  }
}
