import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grocery/presentation/categories/ui/add_category_screen.dart';

import 'bloc/categories_bloc.dart';

class CategoriesRoute {
  static Widget get route => BlocProvider(
        create: (context) => CategoriesBloc(),
        child: const AddCategoryScreen(),
      );
}
