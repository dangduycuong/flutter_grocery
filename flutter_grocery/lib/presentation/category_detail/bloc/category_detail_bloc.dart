import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'category_detail_event.dart';
part 'category_detail_state.dart';

class CategoryDetailBloc extends Bloc<CategoryDetailEvent, CategoryDetailState> {
  CategoryDetailBloc() : super(CategoryDetailInitial()) {
    on<CategoryDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
