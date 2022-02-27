import 'package:json_annotation/json_annotation.dart';

part 'dashboard_model.g.dart';

@JsonSerializable()
class DashboardModel {
  @JsonKey(name: 'id')
  String? orderId;
  @JsonKey(name: 'isActive')
  bool? isActive;
  @JsonKey(name: 'price')
  String? orderPrice;
  @JsonKey(name: 'company')
  String? companyName;
  @JsonKey(name: 'picture')
  String? picture;
  @JsonKey(name: 'buyer')
  String? buyerName;
  @JsonKey(name: 'status')
  String? orderStatus;
  @JsonKey(name: 'registered')
  String? orderDate;
  @JsonKey(name: 'tags')
  List<String>? tags;

  DashboardModel(
      {this.orderId,
      this.buyerName,
      this.companyName,
      this.isActive,
      this.orderDate,
      this.orderPrice,
      this.orderStatus,
      this.picture,
      this.tags});

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);

  Map<String, dynamic> toJson() => _$DashboardModelToJson(this);
}
