import 'package:get_it/get_it.dart';

import 'package:admin_panel/data/data_source/end_point/dashboard_end_point.dart';
import 'package:admin_panel/data/data_source/repository/dashboard_repository.dart';
import 'package:admin_panel/presentation/bloc/dashboard_bloc/dashboard_bloc.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  ///////////////////Data/////////////////////////////

  injector.registerFactory(() => DashboardEndpoint());

  ///////////////////Repository/////////////////////////////

  injector.registerFactory<BaseDashboardRepository>(
      () => DashboardRepository(injector()));

  ///////////////////BLoc/////////////////////////////

  injector
      .registerFactory<DashboardBloc>(() => DashboardBloc(injector()));
}
