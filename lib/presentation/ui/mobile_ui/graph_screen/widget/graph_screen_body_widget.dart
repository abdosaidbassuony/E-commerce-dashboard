import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:admin_panel/data/model/orders_per_month_model.dart';
import 'package:admin_panel/presentation/bloc/dashboard_bloc/dashboard_bloc.dart';

class GraphScreenBodyWidget extends StatelessWidget {
  const GraphScreenBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<OrderPerMonthModel> orderPerMonthModel =
        BlocProvider.of<DashboardBloc>(context).x;
    return Scaffold(
        appBar: _buildAppBar(context),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              title: ChartTitle(text: 'Number of orders per month'),
              legend: Legend(isVisible: false),
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries<OrderPerMonthModel, String>>[
                LineSeries<OrderPerMonthModel, String>(
                    dataSource: orderPerMonthModel,
                    xValueMapper: (OrderPerMonthModel orderPerMonthModel, _) =>
                        orderPerMonthModel.month,
                    yValueMapper: (OrderPerMonthModel orderPerMonthModel, _) =>
                        orderPerMonthModel.numberOfOrders,
                    name: '',
                    // Enable data label
                    dataLabelSettings: const DataLabelSettings(isVisible: true))
              ]),
        ]));
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "Order Graph",
        style: TextStyle(color: Colors.black),
      ),
      leading: InkWell(
        onTap: () =>
            BlocProvider.of<DashboardBloc>(context).add(NavigatePopEvent()),
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
