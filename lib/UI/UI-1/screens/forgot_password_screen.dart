import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/widgets/input_field.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const id = 'forgot_password_screen';

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
            "Forgot Password",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            const SizedBox(height: 25),
            InputField(
              title: "New Password",
              value: "x x x x x x x x x x x x x x x",
              icon: Icon(Icons.visibility, color: Colors.grey[600]),
            ),
            const SizedBox(height: 25),
            InputField(
              title: "Confirm Password",
              value: "x x x x x x x x x x x x x x x",
              icon: Icon(Icons.visibility, color: Colors.grey[600]),
            ),
            const SizedBox(height: 25),
            MyButton(
                title: "Reset",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Your password has been reset",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 25),
                              MyButton(
                                  title: "Done",
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  }),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
