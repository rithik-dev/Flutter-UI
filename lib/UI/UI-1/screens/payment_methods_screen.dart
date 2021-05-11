import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/app_data.dart';
import 'package:flutter_ui/UI/UI-1/screens/add_new_payment_method_screen.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_app_bar.dart';
import 'package:flutter_ui/UI/UI-1/widgets/payment_method_card.dart';

class PaymentMethodsScreen extends StatelessWidget {
  static const id = 'payment_methods_screen';

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
            "Payment Methods",
            style: TextStyle(color: Colors.black),
          ),
          actions: [AppBarNotificationIcon()],
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            _title("Payment Methods"),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return PaymentMethodCard(AppData.paymentMethods[index]);
              },
              itemCount: AppData.paymentMethods.length,
            ),
            const SizedBox(height: 15),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () =>
              Navigator.pushNamed(context, AddNewPaymentMethodScreen.id),
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
