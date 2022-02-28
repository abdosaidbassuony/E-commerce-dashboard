import 'package:admin_panel/presentation/ui/dashboard_screen/mobile_widget/admin_details_mobile_widget.dart';
import 'package:admin_panel/presentation/ui/dashboard_screen/mobile_widget/dashboard_details_mobile_widget.dart';
import 'package:flutter/material.dart';

class DashboardBodyMobileWidget extends StatelessWidget {
  final String? totalOrders;

  final String? numberOfReturn;

  final String? averagePrice;

  const DashboardBodyMobileWidget(
      {Key? key, this.averagePrice, this.numberOfReturn, this.totalOrders})
      : super(key: key);

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
              const AdminDetailsMobileWidget(),
              const SizedBox(height: 8),
              const Divider(thickness: 2),
              const SizedBox(height: 30),
              DashboardDetailsMobileWidget(
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
