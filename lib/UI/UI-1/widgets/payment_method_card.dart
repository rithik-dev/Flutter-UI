import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/my_cached_network_image.dart';

class PaymentMethodCard extends StatelessWidget {
  final Map<String, dynamic> card;

  const PaymentMethodCard(
    this.card, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyContainer(
      padding: 0,
      elevation: 0,
      color: Colors.grey[200],
      borderRadius: 15,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: MyCachedNetworkImage(
          card['icon'],
          width: 75,
          height: 100,
          cover: false,
        ),
        title: Text(
          card['name'],
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        subtitle: Text(
          card['number'],
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        trailing: (card['selected'] ?? false)
            ? Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Icon(Icons.check, color: Colors.white),
                ),
              )
            : null,
      ),
    );
  }
}
