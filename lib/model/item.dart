import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class ListItemModel {
  List<ItemModel>? data;

  ListItemModel({this.data});
  factory ListItemModel.fromJson(Map<String, dynamic> json) => _$ListItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$ListItemModelToJson(this);
}

@JsonSerializable()
class ItemModel {
  int itemID;
  String itemName;
  String allergyInformation;
  ProductDescriptionModel productDescription;

  ItemModel({required this.itemID, required this.itemName, required this.allergyInformation, required this.productDescription});
  factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$ItemModelToJson(this);
}

@JsonSerializable()
class ProductDescriptionModel {
  String details;
  int size;
  String unitSize;

  ProductDescriptionModel({required this.details, required this.size, required this.unitSize});
  factory ProductDescriptionModel.fromJson(Map<String, dynamic> json) => _$ProductDescriptionModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductDescriptionModelToJson(this);
}
