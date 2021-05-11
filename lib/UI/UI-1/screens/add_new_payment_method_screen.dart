import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/app_data.dart';
import 'package:flutter_ui/UI/UI-1/widgets/input_field.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_button.dart';
import 'package:flutter_ui/widgets/my_cached_network_image.dart';

class AddNewPaymentMethodScreen extends StatelessWidget {
  static const id = 'add_new_payment_method_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            MyCachedNetworkImage(
              AppData.addNewCardImage,
              height: 250,
              borderRadius: 15,
              width: double.infinity,
            ),
            const SizedBox(height: 25),
            InputField(title: "Account Holder Name", value: "Mr User"),
            const SizedBox(height: 20),
            InputField(title: "Card Number", value: "4242 4242 4242 4242"),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: InputField(
                    title: "CVC",
                    value: "x x x",
                    icon: Icon(
                      Icons.visibility,
                      color: Colors.grey[600],
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: InputField(title: "Expiry Date", value: "12/22"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            MyButton(
              title: "Add",
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
