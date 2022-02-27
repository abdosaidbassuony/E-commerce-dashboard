import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:admin_panel/data/data_source/repository/dashboard_repository.dart';
import 'package:admin_panel/data/model/dashboard_model.dart';
import 'package:admin_panel/data/model/orders_per_month_model.dart';
import 'package:admin_panel/utils/map_month_id_to_text.dart';
import 'package:admin_panel/utils/order_status_enum.dart';
import 'package:admin_panel/utils/remove_signs_from_price.dart';

part 'dashboard_event.dart';

part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final BaseDashboardRepository _dashboardRepository;
  Map<String, String> numberOfOrderAtEachHour = {};
  List<OrderPerMonthModel> x = [];

  DashboardBloc(this._dashboardRepository) : super(InitialDashboardState()) {
    on<GetDashBoardListEvent>(_onGetDashboardListEvent);
    on<SetDashboardListDataEvent>(_onSetDashboardListDataEvent);
    on<OpenGraphScreenEvent>(_onOpenGraphScreenEvent);
    on<NavigatePopEvent>(_onNavigatePopEvent);
  }

  FutureOr<void> _onGetDashboardListEvent(event, emit) async {
    await _dashboardRepository.getDashboardData((dashboardList) {
      emit(GetDashboardListSuccessfullyState(dashboardList: dashboardList));
    }, (errorMessage) {
      emit(DashboardErrorState(errorMessage: errorMessage));
    });
  }

  FutureOr<void> _onSetDashboardListDataEvent(
      SetDashboardListDataEvent event, emit) {
    _getNumberOfOrderAtEachHour(event.dashboardList!);
    emit(SetDashboardListDataState(
        averagePrice:
            _priceAverageOfOrders(event.dashboardList!).toStringAsFixed(3),
        numberOfReturns:
            _numberOfReturnsOrders(event.dashboardList!).toString(),
        totalOfOrders: _totalNumberOfOrders(event.dashboardList!).toString()));
  }

  int _numberOfReturnsOrders(List<DashboardModel> dashboardList) =>
      dashboardList
          .where((element) => element.orderStatus == orderStatus.RETURNED.name)
          .length;

  int _totalNumberOfOrders(List<DashboardModel> dashboardList) =>
      dashboardList.length;

  num _priceAverageOfOrders(List<DashboardModel> dashboardList) =>
      _priceOfOrders(dashboardList) / _totalNumberOfOrders(dashboardList);

  num _priceOfOrders(List<DashboardModel> list) {
    num totalPriceOfOrders = 0;
    for (var order in list) {
      totalPriceOfOrders += double.parse(
          order.orderPrice!.removeDollarSign.removeCommaSign.trim());
    }
    return totalPriceOfOrders;
  }

  void _getNumberOfOrderAtEachHour(List<DashboardModel>? dashboardList) {
    for (var month = 1; month <= 12; month++) {
      x.add(OrderPerMonthModel(
          month: monthName[month],
          numberOfOrders: dashboardList!
              .where((element) =>
                  DateTime.parse(element.orderDate!).month == month)
              .length));
    }
  }

  FutureOr<void> _onOpenGraphScreenEvent(
      OpenGraphScreenEvent event, Emitter<DashboardState> emit) {
    emit(OpenGraphScreenState());
  }

  FutureOr<void> _onNavigatePopEvent(
      NavigatePopEvent event, Emitter<DashboardState> emit) {
    emit(NavigatePopState());
  }
}
