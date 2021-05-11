import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/app_data.dart';
import 'package:flutter_ui/UI/UI-1/screens/login_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/manage_profile_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/payment_methods_screen.dart';
import 'package:flutter_ui/widgets/my_cached_network_image.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.settings),
                color: Colors.amber,
                onPressed: () =>
                    Navigator.pushNamed(context, ManageProfileScreen.id),
              ),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
            children: [
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                clipBehavior: Clip.hardEdge,
                height: 125,
                width: 125,
                child: MyCachedNetworkImage(AppData.profilePicture),
              ),
              const SizedBox(height: 10),
              Text(
                "Jonathan Smith",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone, size: 17.5),
                  const SizedBox(width: 5),
                  Text(
                    "+0123 - 23 - 344",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              _title("My Account"),
              const SizedBox(height: 5),
              _tile(
                iconData: Icons.person_outline,
                title: "Manage Profile",
                onTap: () =>
                    Navigator.pushNamed(context, ManageProfileScreen.id),
              ),
              const SizedBox(height: 10),
              _tile(
                iconData: Icons.attach_money,
                title: "Payment Methods",
                onTap: () =>
                    Navigator.pushNamed(context, PaymentMethodsScreen.id),
              ),
              const SizedBox(height: 20),
              _title("Others"),
              const SizedBox(height: 5),
              _tile(
                iconData: Icons.notifications_active_rounded,
                title: "Notifications",
                onTap: () {},
              ),
              const SizedBox(height: 10),
              _tile(
                iconData: Icons.logout,
                title: "Logout",
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  LoginScreen.id,
                  (route) => false,
                ),
              ),
            ],
          )),
    );
  }

  Widget _tile({
    required IconData iconData,
    required String title,
    required VoidCallback onTap,
  }) {
    return EasyContainer(
      onTap: onTap,
      child: Row(
        children: [
          Icon(iconData, color: Colors.amber, size: 25),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
      alignment: Alignment.centerLeft,
      padding: 20,
      borderRadius: 15,
      margin: 0,
      color: Colors.grey[200],
      elevation: 0,
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
