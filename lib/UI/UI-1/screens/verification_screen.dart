import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/app_data.dart';
import 'package:flutter_ui/UI/UI-1/screens/otp_screen.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_button.dart';
import 'package:flutter_ui/widgets/my_cached_network_image.dart';

class VerificationScreen extends StatelessWidget {
  static const id = 'verification_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
          centerTitle: true,
          title: Text(
            "Verify Phone Number",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Phone Number",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 15),
              EasyContainer(
                height: 75,
                elevation: 0,
                borderRadius: 15,
                color: Colors.grey[200],
                child: Row(
                  children: [
                    const SizedBox(width: 5),
                    MyCachedNetworkImage(AppData.indiaFlag),
                    const SizedBox(width: 10),
                    Text(
                      "+91",
                      style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                    ),
                    Icon(Icons.arrow_drop_down, color: Colors.grey[600]),
                    const SizedBox(width: 5),
                    VerticalDivider(thickness: 2),
                    const SizedBox(width: 5),
                    Text(
                      "123 - 23 - 344",
                      style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "We have sent an SMS with a code to the \nnumber 9876543210",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 100),
              MyButton(
                title: "Send OTP",
                onTap: () => Navigator.pushNamed(context, OTPScreen.id),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
