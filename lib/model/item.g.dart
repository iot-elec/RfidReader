// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListItemModel _$ListItemModelFromJson(Map<String, dynamic> json) =>
    ListItemModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListItemModelToJson(ListItemModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) => ItemModel(
      itemID: json['itemID'] as int,
      itemName: json['itemName'] as String,
      allergyInformation: json['allergyInformation'] as String,
      productDescription: ProductDescriptionModel.fromJson(
          json['productDescription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemModelToJson(ItemModel instance) => <String, dynamic>{
      'itemID': instance.itemID,
      'itemName': instance.itemName,
      'allergyInformation': instance.allergyInformation,
      'productDescription': instance.productDescription,
    };

ProductDescriptionModel _$ProductDescriptionModelFromJson(
        Map<String, dynamic> json) =>
    ProductDescriptionModel(
      details: json['details'] as String,
      size: json['size'] as int,
      unitSize: json['unitSize'] as String,
    );

Map<String, dynamic> _$ProductDescriptionModelToJson(
        ProductDescriptionModel instance) =>
    <String, dynamic>{
      'details': instance.details,
      'size': instance.size,
      'unitSize': instance.unitSize,
    };
