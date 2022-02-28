import 'package:admin_panel/presentation/ui/graph_screen/widget/graph_screen_body_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:admin_panel/presentation/bloc/dashboard_bloc/dashboard_bloc.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({Key? key}) : super(key: key);

  @override
  _GraphScreenState createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DashboardBloc, DashboardState>(
      listener: (context, state) {
        if (state is NavigatePopState) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return const GraphScreenBodyWidget();
      },
    );
  }
}
