import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/screens/login_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/verification_screen.dart';
import 'package:flutter_ui/UI/UI-1/utils/constants.dart';
import 'package:flutter_ui/UI/UI-1/widgets/input_field.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_button.dart';

class RegisterScreen extends StatelessWidget {
  static const id = 'register_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Register",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Fill in the form and create an account",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 25),
              InputField(title: "Full Name", value: "Mr User"),
              const SizedBox(height: 25),
              InputField(title: "Email", value: "mruser121@gmail.com"),
              const SizedBox(height: 25),
              InputField(
                title: "Password",
                value: "x x x x x x x x x x x x x x x",
                icon: Icon(Icons.visibility, color: Colors.grey[600]),
              ),
              const SizedBox(height: 10),
              CheckboxListTile(
                value: true,
                onChanged: (v) {},
                contentPadding: EdgeInsets.zero,
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Theme.of(context).accentColor,
                title: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontFamily: FONT_FAMILY,
                      ),
                      children: [
                        TextSpan(text: "Accept All"),
                        TextSpan(text: " "),
                        TextSpan(
                          text: "Terms And Conditions",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ]),
                ),
              ),
              const SizedBox(height: 10),
              MyButton(
                title: "Register",
                onTap: () => Navigator.pushNamed(
                  context,
                  VerificationScreen.id,
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: EasyContainer(
                  margin: 0,
                  color: Colors.transparent,
                  elevation: 0,
                  customPadding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  alignment: null,
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, LoginScreen.id),
                  child: Text(
                    "Already have an account. Go Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
