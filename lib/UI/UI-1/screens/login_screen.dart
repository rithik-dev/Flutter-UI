import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/screens/forgot_password_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/register_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/verification_screen.dart';
import 'package:flutter_ui/UI/UI-1/widgets/input_field.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_button.dart';

class LoginScreen extends StatelessWidget {
  static const id = 'login_screen';

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
                "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Fill in the form and login to your account",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 25),
              InputField(title: "Email", value: "mruser121@gmail.com"),
              const SizedBox(height: 25),
              InputField(
                title: "Password",
                value: "x x x x x x x x x x x x x x x",
                icon: Icon(Icons.visibility, color: Colors.grey[600]),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: EasyContainer(
                  margin: 0,
                  color: Colors.transparent,
                  elevation: 0,
                  customPadding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  alignment: null,
                  onTap: () => Navigator.pushNamed(
                    context,
                    ForgotPasswordScreen.id,
                  ),
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              CheckboxListTile(
                value: true,
                onChanged: (v) {},
                contentPadding: EdgeInsets.zero,
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Theme.of(context).accentColor,
                title: Text(
                  "Remember Me",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
              const SizedBox(height: 10),
              MyButton(
                title: "Login",
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
                  onTap: () => Navigator.pushReplacementNamed(
                      context, RegisterScreen.id),
                  child: Text(
                    "Create a new account. Go to Register",
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
