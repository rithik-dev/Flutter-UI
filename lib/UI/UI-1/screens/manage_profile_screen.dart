import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/app_data.dart';
import 'package:flutter_ui/UI/UI-1/screens/login_screen.dart';
import 'package:flutter_ui/UI/UI-1/widgets/input_field.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_button.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_cached_network_image.dart';

class ManageProfileScreen extends StatelessWidget {
  static const id = 'manage_profile_screen';

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
            "Profile Update",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            EasyContainer(
              color: Colors.transparent,
              highlightColor: Colors.amber.withOpacity(0.1),
              splashColor: Colors.amber.withOpacity(0.1),
              onTap: () => Navigator.pop(context),
              child: Text(
                "Save",
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            Align(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    clipBehavior: Clip.hardEdge,
                    height: 100,
                    width: 100,
                    child: MyCachedNetworkImage(AppData.profilePicture),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).accentColor,
                      radius: 15,
                      child: Icon(
                        Icons.linked_camera_rounded,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            InputField(
              title: "First Name",
              value: "Jonathan",
              icon: Icon(
                Icons.edit,
                size: 18,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 15),
            InputField(
              title: "Last Name",
              value: "Smith",
              icon: Icon(
                Icons.edit,
                size: 18,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 15),
            InputField(title: "Email", value: "mruser121@gmail.com"),
            const SizedBox(height: 15),
            InputField(
              title: "Phone",
              value: "+0123 - 23 - 344",
              icon: Icon(
                Icons.edit,
                size: 18,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 15),
            MyButton(
              title: "Logout",
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                context,
                LoginScreen.id,
                (route) => false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
