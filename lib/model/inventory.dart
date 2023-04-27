import 'dart:convert';
import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'inventory.g.dart';

@JsonSerializable()
class ListInventoryModel {
  List<InventoryModel> data;

  ListInventoryModel({required this.data});
  factory ListInventoryModel.fromJson(Map<String, dynamic> json) =>
      _$ListInventoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$ListInventoryModelToJson(this);

  ListInventoryModel fromJson(Map<String, dynamic> json) {
    return ListInventoryModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => InventoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  bool checkIfInventoryIdIsAdded(List<int> input) {
    for (InventoryModel d in data) {
      if (input.length == d.inventoryId.length) {
        for (int i = 0; i < input.length; i++) {
          if (input[i] == d.inventoryId[i]) {
            return true;
          }
        }
      }
    }
    return false;
  }

  double getSumprice() {
    double sumPrice = 0;

    for (var d in data) {
      sumPrice = sumPrice + d.price;
    }
    return double.parse(sumPrice.toDouble().toStringAsFixed(2));
  }
}

@JsonSerializable()
class InventoryModel {
  List<int> inventoryId;
  ItemModel itemModel;
  DateTime? exp;
  DateTime? mfg;
  double price;
  String priceUnit;

  InventoryModel(
      {required this.inventoryId,
      required this.itemModel,
      required this.price,
      required this.priceUnit,
      this.exp,
      this.mfg});
  factory InventoryModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$InventoryModelToJson(this);

  InventoryModel fromJson(Map<String, dynamic> json) => InventoryModel(
        inventoryId: (json['inventoryId'] as List<dynamic>)
            .map((e) => e as int)
            .toList(),
        itemModel:
            ItemModel.fromJson(json['itemModel'] as Map<String, dynamic>),
        price: (json['price'] as num).toDouble(),
        priceUnit: json['priceUnit'] as String,
        exp: json['exp'] == null ? null : DateTime.parse(json['exp'] as String),
        mfg: json['mfg'] == null ? null : DateTime.parse(json['mfg'] as String),
      );
}
