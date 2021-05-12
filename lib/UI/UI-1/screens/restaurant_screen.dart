import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/app_data.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_app_bar.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_button.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_cached_network_image.dart';

class RestaurantScreen extends StatelessWidget {
  static const id = 'restaurant_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: MyCachedNetworkImage(
                AppData.restaurantDetailsBackgroundImage,
                height: 250,
                width: double.infinity,
              ),
            ),
            AppBar(
              centerTitle: true,
              title: Text("Details"),
              actions: [AppBarNotificationIcon(color: Colors.white)],
            ),
            EasyContainer(
              color: Colors.white,
              customMargin: const EdgeInsets.fromLTRB(0, 175, 0, 0),
              padding: 0,
              customBorderRadius:
                  BorderRadius.vertical(top: Radius.circular(50)),
              child: ListView(
                padding: const EdgeInsets.all(15),
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Italian Mix Food",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "\$14.99",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.amber, size: 20),
                                  Icon(Icons.star,
                                      color: Colors.amber, size: 20),
                                  Icon(Icons.star,
                                      color: Colors.amber, size: 20),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 2),
                                  Text("(02)"),
                                ],
                              ),
                            ),
                            Icon(Icons.extension, size: 15),
                            const SizedBox(width: 5),
                            Text(
                              "30 Minutes Free Shipping",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  EasyContainer(
                    color: Colors.amber.withOpacity(0.2),
                    padding: 15,
                    elevation: 0,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Details",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Reviews",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Ingredients",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Quantity",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "2",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        padding: const EdgeInsets.all(7),
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  _title("Select Delivery Method"),
                  EasyContainer(
                    child: Text(
                      "Free Shipping",
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                    alignment: Alignment.centerLeft,
                    color: Colors.grey[200],
                    elevation: 0,
                    height: 75,
                  ),
                  const SizedBox(height: 10),
                  EasyContainer(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.add_circle, size: 25),
                        const SizedBox(width: 10),
                        Text(
                          "Add Extra",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    color: Colors.grey[200],
                    elevation: 0,
                    height: 75,
                  ),
                  const SizedBox(height: 10),
                  MyButton(title: "Add To Cart", onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title(String title, {Widget? trailing}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),
            ),
          ),
          if (trailing != null) trailing,
        ],
      ),
    );
  }
}
