import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/app_data.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_app_bar.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_cached_network_image.dart';
import 'package:flutter_ui/UI/UI-1/widgets/product_card.dart';
import 'package:flutter_ui/UI/UI-1/widgets/restaurant_card.dart';
import 'package:flutter_ui/UI/UI-1/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: "What would you like to order?"),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          children: [
            const SearchBar(),
            _title("Top Categories"),
            SizedBox(
              height: 125,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (c, i) => SizedBox(width: 10),
                padding: const EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      EasyContainer(
                        elevation: 0,
                        color: Colors.grey[200],
                        padding: 0,
                        width: 75,
                        height: 75,
                        child: MyCachedNetworkImage(
                          AppData.topCategories[index]['image']!,
                        ),
                      ),
                      Text(AppData.topCategories[index]['title']!),
                    ],
                  );
                },
                itemCount: AppData.topCategories.length,
              ),
            ),
            _title("Popular Offers"),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ProductCard(AppData.products[index]);
                },
                itemCount: AppData.products.length,
              ),
            ),
            _title("Recently Published"),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return RestaurantCard(AppData.products[index]);
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
