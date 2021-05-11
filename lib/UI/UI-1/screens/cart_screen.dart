import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/app_data.dart';
import 'package:flutter_ui/UI/UI-1/screens/add_new_payment_method_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/order_details_screen.dart';
import 'package:flutter_ui/UI/UI-1/widgets/cart_product_tile.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_app_bar.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_button.dart';
import 'package:flutter_ui/UI/UI-1/widgets/payment_method_card.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: "Checkout"),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (c, i) => const Divider(
                height: 5,
                thickness: 0.5,
              ),
              itemBuilder: (context, index) {
                return CartProductTile(AppData.products[index]);
              },
              itemCount: 3,
            ),
            const Divider(thickness: 0.75),
            const SizedBox(height: 10),
            _info(title: "Item Total", value: "\$17.95"),
            const SizedBox(height: 10),
            _info(title: "Discount", value: "-\$2.00"),
            const SizedBox(height: 10),
            _info(
              title: "Delivery Fees",
              value: "Free",
              trailingColor: Colors.amber,
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 0.75),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
                Text(
                  "\$15.95",
                  style: TextStyle(fontSize: 35, color: Colors.black87),
                ),
              ],
            ),
            const SizedBox(height: 10),
            _title(
              "Payment Methods",
              trailing: EasyContainer(
                margin: 0,
                color: Colors.transparent,
                highlightColor: Colors.amber.withOpacity(0.1),
                splashColor: Colors.amber.withOpacity(0.1),
                onTap: () =>
                    Navigator.pushNamed(context, AddNewPaymentMethodScreen.id),
                child: Text(
                  "Add New",
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return PaymentMethodCard(AppData.paymentMethods[index]);
              },
              itemCount: AppData.paymentMethods.length,
            ),
            const SizedBox(height: 10),
            _title("Select Delivery Method"),
            EasyContainer(
              child: Text(
                "Free Shipping",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700]
                ),
              ),
              alignment: Alignment.centerLeft,
              color: Colors.grey[200],
              elevation: 0,
              height: 75,
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.amber),
              title: Text("2122 New Road, BD"),
            ),
            const SizedBox(height: 10),
            MyButton(
              title: "Checkout",
              onTap: () => Navigator.pushNamed(context, OrderDetailsScreen.id),
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

  Widget _info({
    required String title,
    required String value,
    Color trailingColor = Colors.black,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
        Text(
          value,
          style: TextStyle(
            color: trailingColor,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
