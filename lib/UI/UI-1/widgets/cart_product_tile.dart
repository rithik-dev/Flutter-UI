import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/my_cached_network_image.dart';

class CartProductTile extends StatelessWidget {
  final Map<String, dynamic> product;

  const CartProductTile(
    this.product, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          EasyContainer(
            color: Colors.transparent,
            showBorder: true,
            borderRadius: 0,
            borderColor: Colors.grey[300]!,
            child: MyCachedNetworkImage(
              product['image'],
              padding: const EdgeInsets.all(5),
              width: 50,
              height: 50,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product['name'],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Row(
                  children: [
                    Text(
                      product['price'],
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      padding: const EdgeInsets.all(6),
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "3",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.amber,
                      ),
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
