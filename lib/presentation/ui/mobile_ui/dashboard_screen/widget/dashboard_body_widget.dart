import 'package:flutter/material.dart';

import 'package:admin_panel/presentation/ui/mobile_ui/dashboard_screen/widget/admin_details_widget.dart';
import 'package:admin_panel/presentation/ui/mobile_ui/dashboard_screen/widget/dashboard_details_widget.dart';

class DashboardBodyWidget extends StatelessWidget {
  final String? totalOrders;

  final String? numberOfReturn;

  final String? averagePrice;

  const DashboardBodyWidget({
    Key? key,
    this.totalOrders,
    this.averagePrice,
    this.numberOfReturn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            children: [
              const AdminDetailsWidget(),
              const SizedBox(height: 8),
              const Divider(thickness: 2),
              const SizedBox(height: 30),
              DashboardDetailsWidget(
                  numberOfReturn: numberOfReturn,
                  averagePrice: averagePrice,
                  totalOrders: totalOrders),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() => AppBar(
        backgroundColor: Colors.white70,
        elevation: 0,
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      );
}
