import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/screens/home_bottom_navigation_screen.dart';
import 'package:flutter_ui/UI/UI-1/utils/constants.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_button.dart';

class OTPScreen extends StatelessWidget {
  static const id = 'otp_screen';

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
            "Phone Verification",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Enter OTP Code",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) => EasyContainer(
                    child: Text(
                      ['1', '5', '0', '1'][index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    height: 75,
                    width: 75,
                    elevation: 0,
                    borderRadius: 15,
                    color: Colors.grey[200],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    fontFamily: FONT_FAMILY,
                  ),
                  children: [
                    TextSpan(text: "Didn't receive OTP? "),
                    TextSpan(
                      text: "Resend Code",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              MyButton(
                title: "Verify",
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  HomeBottomNavigationScreen.id,
                  (route) => false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
