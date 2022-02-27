part of 'dashboard_bloc.dart';

class DashboardEvent extends Equatable {
  const DashboardEvent();

  @override
  List<Object?> get props => [];
}

class GetDashBoardListEvent extends DashboardEvent {}

class OpenGraphScreenEvent extends DashboardEvent {}

class NavigatePopEvent extends DashboardEvent {}

class SetDashboardListDataEvent extends DashboardEvent {
  final List<DashboardModel>? dashboardList;

  const SetDashboardListDataEvent({this.dashboardList});

  @override
  // TODO: implement props
  List<Object?> get props => [dashboardList];
}
