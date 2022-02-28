import 'package:admin_panel/presentation/ui/dashboard_screen/web_widget/admin_details_web_widget.dart';
import 'package:admin_panel/presentation/ui/dashboard_screen/web_widget/dashboard_details_web_widget.dart';
import 'package:flutter/material.dart';

class DashboardBodyWebWidget extends StatelessWidget {
  final String? totalOrders;

  final String? numberOfReturn;

  final String? averagePrice;

  const DashboardBodyWebWidget(
      {Key? key, this.totalOrders, this.numberOfReturn, this.averagePrice})
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AdminDetailsWebWidget(),
              const SizedBox(height: 8),
              const SizedBox(
                  width: 300,
                  child: Divider(
                    thickness: 2,
                  )),
              const SizedBox(height: 30),
              DashboardDetailsWebWidget(
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
