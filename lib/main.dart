import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:admin_panel/injector.dart';
import 'package:admin_panel/presentation/bloc/dashboard_bloc/dashboard_bloc.dart';
import 'package:admin_panel/presentation/ui/mobile_ui/dashboard_screen/screen/dashboard_screen.dart';

void main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DashboardBloc>(
            create: (context) => DashboardBloc(injector()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFFE1E7FA),
        ),
        home: const DashboardScreen(),
      ),
    );
  }
}
