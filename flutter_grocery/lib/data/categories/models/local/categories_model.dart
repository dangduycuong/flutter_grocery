import 'package:hive/hive.dart';

part 'categories_model.g.dart';

@HiveType(typeId: 0)
class CategoriesModel {
  @HiveField(0)
  String? idCategory;

  @HiveField(1)
  String? nameCategory;

  @HiveField(2)
  String? iconUrl;

  @HiveField(3)
  int? totalCategory;

  @HiveField(4)
  int? totalGoods;

  @HiveField(5)
  double? totalCapital;

  @HiveField(6)
  double? totalSales;

  CategoriesModel({
    this.idCategory,
    this.nameCategory,
    this.iconUrl,
    this.totalCategory,
    this.totalGoods,
    this.totalCapital,
    this.totalSales,
  });
}
