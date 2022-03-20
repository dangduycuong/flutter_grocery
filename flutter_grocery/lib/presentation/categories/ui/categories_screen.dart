import 'package:flutter/material.dart';

import '../../../utils/route/app_routing.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 25,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              RouteDefine.categoryDetailScreen.name,
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Stack(
              children: [
                Image.network(
                    'https://www.thecocktaildb.com/images/media/drink/0bkwca1492975553.jpg'),
                const Text('Cây giống'),
              ],
            ),
          ),
        );
      },
    );
  }
}
