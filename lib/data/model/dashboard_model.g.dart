// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) =>
    DashboardModel(
      orderId: json['id'] as String?,
      buyerName: json['buyer'] as String?,
      companyName: json['company'] as String?,
      isActive: json['isActive'] as bool?,
      orderDate: json['registered'] as String?,
      orderPrice: json['price'] as String?,
      orderStatus: json['status'] as String?,
      picture: json['picture'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DashboardModelToJson(DashboardModel instance) =>
    <String, dynamic>{
      'id': instance.orderId,
      'isActive': instance.isActive,
      'price': instance.orderPrice,
      'company': instance.companyName,
      'picture': instance.picture,
      'buyer': instance.buyerName,
      'status': instance.orderStatus,
      'registered': instance.orderDate,
      'tags': instance.tags,
    };
