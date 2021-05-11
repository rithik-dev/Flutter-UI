import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/screens/restaurant_screen.dart';
import 'package:flutter_ui/widgets/my_cached_network_image.dart';

class RestaurantCard extends StatelessWidget {
  final Map<String, dynamic> restaurant;

  const RestaurantCard(
    this.restaurant, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyContainer(
      onTap: () => Navigator.pushNamed(context, RestaurantScreen.id),
      elevation: 0,
      color: Colors.grey[200],
      padding: 15,
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: MyCachedNetworkImage(
              restaurant['image'],
              borderRadius: 15,
              width: double.infinity,
              padding: const EdgeInsets.all(5),
              cover: false,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            restaurant['name'],
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star, color: Colors.amber, size: 20),
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
              Text(
                "52 mins ago",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              Text(
                restaurant['price'],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
