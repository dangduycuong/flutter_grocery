import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

part 'categories_event.dart';

part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitial()) {
    on<CategoriesEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<AddCategoryEvent>(_addCategory);
  }

  void _addCategory(AddCategoryEvent event, Emitter<CategoriesState> emit) {
    var uuid = Uuid();
    uuid.v1();
  }
}
