import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:admin_panel/presentation/bloc/dashboard_bloc/dashboard_bloc.dart';
import 'package:admin_panel/presentation/ui/mobile_ui/dashboard_screen/widget/status_card_widget.dart';

class AveragePriceWidget extends StatelessWidget {
  final String? averagePrice;

  const AveragePriceWidget({Key? key, this.averagePrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: StatusCardWidget(
            valueTextSize: 16,
            titleTextSize: 23,
            statusTitle: "Average Price",
            statusValue: "\$${averagePrice!}",
          ),
        ),
        Expanded(
          child: StatusCardWidget(
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
