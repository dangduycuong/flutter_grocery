import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grocery/presentation/category_detail/ui/category_detail_screen.dart';

import 'bloc/category_detail_bloc.dart';

// class CoinDetailRoute {
//   static Widget route({required Coins coin}) => BlocProvider(
//     create: (context) => CoinDetailBloc(
//       CoinsUseCase(
//         getIt<CoinsRepository>(),
//       ),
//     ),
//     child: CoinDetailScreen(
//       coin: coin,
//     ),
//   );
// }

class CategoryDetailRoute {
  static Widget get route => BlocProvider(
        create: (context) => CategoryDetailBloc(),
        child: const CategoryDetailScreen(),
      );
}
