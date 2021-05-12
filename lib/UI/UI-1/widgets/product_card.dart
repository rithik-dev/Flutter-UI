import 'dart:math';

import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_cached_network_image.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductCard(
    this.product, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        EasyContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: MyCachedNetworkImage(
                  product['image'],
                  borderRadius: 15,
                  width: double.infinity,
                  cover: false,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                product['name'],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 2.5),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 17.5),
                  Icon(Icons.star, color: Colors.amber, size: 17.5),
                  Icon(Icons.star, color: Colors.amber, size: 17.5),
                  Icon(
                    Icons.star_border,
                    color: Colors.amber,
                    size: 17.5,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.amber,
                    size: 17.5,
                  ),
                  Spacer(),
                  Text(
                    product['price'],
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          elevation: 0,
          color: Colors.grey[200],
          width: 200,
        ),
        Positioned(
          right: 15,
          top: 15,
          child: Icon(
            Icons.favorite,
            color: [Colors.grey, Colors.red][Random().nextInt(2)],
          ),
        ),
      ],
    );
  }
}
