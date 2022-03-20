// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoriesModelAdapter extends TypeAdapter<CategoriesModel> {
  @override
  final int typeId = 0;

  @override
  CategoriesModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoriesModel(
      idCategory: fields[0] as String?,
      nameCategory: fields[1] as String?,
      iconUrl: fields[2] as String?,
      totalCategory: fields[3] as int?,
      totalGoods: fields[4] as int?,
      totalCapital: fields[5] as double?,
      totalSales: fields[6] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, CategoriesModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.idCategory)
      ..writeByte(1)
      ..write(obj.nameCategory)
      ..writeByte(2)
      ..write(obj.iconUrl)
      ..writeByte(3)
      ..write(obj.totalCategory)
      ..writeByte(4)
      ..write(obj.totalGoods)
      ..writeByte(5)
      ..write(obj.totalCapital)
      ..writeByte(6)
      ..write(obj.totalSales);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoriesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
