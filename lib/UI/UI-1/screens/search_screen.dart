import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/app_data.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_app_bar.dart';
import 'package:flutter_ui/UI/UI-1/widgets/restaurant_card.dart';
import 'package:flutter_ui/UI/UI-1/widgets/search_bar.dart';

class SearchScreen extends StatelessWidget {
  static const id = 'search_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          centerTitle: true,
          title: Text(
            "Search",
            style: TextStyle(color: Colors.black),
          ),
          actions: [AppBarNotificationIcon()],
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            const SearchBar(text: "Pizza"),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Search Result : About 20 results"),
            ),
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
}
