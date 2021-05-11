import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/app_data.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_app_bar.dart';
import 'package:flutter_ui/UI/UI-1/widgets/product_card.dart';
import 'package:flutter_ui/UI/UI-1/widgets/search_bar.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: "Favorites"),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          children: [
            const SearchBar(),
            _title("Saved Items"),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ProductCard(AppData.products[index]);
              },
              itemCount: AppData.products.length,
            ),
          ],
        ),
      ),
    );
  }

  Widget _title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 19,
        ),
      ),
    );
  }
}
