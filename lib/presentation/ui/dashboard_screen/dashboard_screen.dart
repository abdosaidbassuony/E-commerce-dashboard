import 'package:admin_panel/presentation/ui/dashboard_screen/widget/dashboard_body_widget.dart';
import 'package:admin_panel/presentation/ui/graph_screen/screen/graph_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:admin_panel/presentation/bloc/dashboard_bloc/dashboard_bloc.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String? totalOrders = "0";
  String? numberOfReturn = "0";
  String? averagePrice = "0";

  @override
  void initState() {
    BlocProvider.of<DashboardBloc>(context).add(GetDashBoardListEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DashboardBloc, DashboardState>(
        listener: (context, state) {
      if (state is GetDashboardListSuccessfullyState) {
        BlocProvider.of<DashboardBloc>(context)
            .add(SetDashboardListDataEvent(dashboardList: state.dashboardList));
      } else if (state is OpenGraphScreenState) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GraphScreen(),
            ));
      }
    }, builder: (context, state) {
      if (state is SetDashboardListDataState) {
        numberOfReturn = state.numberOfReturns;
        averagePrice = state.averagePrice;
        totalOrders = state.totalOfOrders;
        return DashboardBodyWidget(
            numberOfReturn: numberOfReturn,
            averagePrice: averagePrice,
            totalOrders: totalOrders);
      }
      return DashboardBodyWidget(
          numberOfReturn: numberOfReturn,
          averagePrice: averagePrice,
          totalOrders: totalOrders);
    });
  }
}
