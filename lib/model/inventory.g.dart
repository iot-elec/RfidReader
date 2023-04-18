// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListInventoryModel _$ListInventoryModelFromJson(Map<String, dynamic> json) =>
    ListInventoryModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => InventoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListInventoryModelToJson(ListInventoryModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

InventoryModel _$InventoryModelFromJson(Map<String, dynamic> json) =>
    InventoryModel(
      inventoryId:
          (json['inventoryId'] as List<dynamic>).map((e) => e as int).toList(),
      itemModel: ItemModel.fromJson(json['itemModel'] as Map<String, dynamic>),
      price: (json['price'] as num).toDouble(),
      priceUnit: json['priceUnit'] as String,
      exp: json['exp'] == null ? null : DateTime.parse(json['exp'] as String),
      mfg: json['mfg'] == null ? null : DateTime.parse(json['mfg'] as String),
    );

Map<String, dynamic> _$InventoryModelToJson(InventoryModel instance) =>
    <String, dynamic>{
      'inventoryId': instance.inventoryId,
      'itemModel': instance.itemModel,
      'exp': instance.exp?.toIso8601String(),
      'mfg': instance.mfg?.toIso8601String(),
      'price': instance.price,
      'priceUnit': instance.priceUnit,
    };
