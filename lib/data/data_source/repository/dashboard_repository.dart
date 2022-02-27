import 'package:admin_panel/data/data_source/end_point/dashboard_end_point.dart';
import 'package:admin_panel/data/model/dashboard_model.dart';

abstract class BaseDashboardRepository {
  Future getDashboardData(
    void Function(List<DashboardModel>) success,
    void Function(String) fail,
  );
}

class DashboardRepository extends BaseDashboardRepository {
  final DashboardEndpoint? _endpoint;

  DashboardRepository(this._endpoint);

  @override
  Future getDashboardData(
    void Function(List<DashboardModel>) success,
    void Function(String) fail,
  ) async {
    try {
      List<DashboardModel> list = [];
      for (var element in _endpoint!.dashboardEndPoint) {
        list.add(DashboardModel.fromJson(element));
      }

      success(list);
    } catch (_, e) {
      fail(e.toString());
    }
  }
}
