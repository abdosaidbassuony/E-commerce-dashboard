part of 'dashboard_bloc.dart';

class DashboardState extends Equatable {
  const DashboardState();

  @override
  List<Object?> get props => [];
}

class InitialDashboardState extends DashboardState {}

class OpenGraphScreenState extends DashboardState {}

class NavigatePopState extends DashboardState {}

class SetDashboardListDataState extends DashboardState {
  final String? totalOfOrders;
  final String? averagePrice;
  final String? numberOfReturns;

  const SetDashboardListDataState(
      {this.averagePrice, this.numberOfReturns, this.totalOfOrders});

  @override
  List<Object?> get props => [totalOfOrders, averagePrice, numberOfReturns];
}

class DashboardErrorState extends DashboardState {
  final String? errorMessage;

  const DashboardErrorState({this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

class GetDashboardListSuccessfullyState extends DashboardState {
  final List<DashboardModel>? dashboardList;

  const GetDashboardListSuccessfullyState({this.dashboardList});

  @override
  List<Object?> get props => [dashboardList];
}
