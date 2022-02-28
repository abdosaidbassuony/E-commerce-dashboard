import 'package:admin_panel/presentation/ui/dashboard_screen/web_widget/status_card_web_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:admin_panel/presentation/bloc/dashboard_bloc/dashboard_bloc.dart';

class AveragePriceWebWidget extends StatelessWidget {
  final String? averagePrice;

  const AveragePriceWebWidget({Key? key, this.averagePrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StatusCardWebWidget(
          width: 400,
          height: 200,
          valueTextSize: 16,
          titleTextSize: 23,
          statusTitle: "Average Price",
          statusValue: "\$${averagePrice!}",
        ),
        StatusCardWebWidget(
          onTap: () => BlocProvider.of<DashboardBloc>(context)
              .add(OpenGraphScreenEvent()),
          titleTextSize: 22,
          width: 400,
          height: 200,
          valueTextSize: 14,
          statusTitle: "Orders Graph",
          statusValue: "",
          isIcon: true,
        ),
      ],
    );
  }
}
