import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AppBar MyAppBar({required String title}) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(color: Colors.black),
    ),
    actions: [AppBarNotificationIcon()],
  );
}

// ignore: non_constant_identifier_names
Widget AppBarNotificationIcon({Color? color}) {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(15),
        child: Icon(
          Icons.notifications_none_outlined,
          color: color??Colors.black,
        ),
      ),
      Positioned(
        top: 9,
        right: 11,
        child: CircleAvatar(
          backgroundColor: Colors.amber,
          radius: 8,
          child: Text(
            "3",
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
        ),
      )
    ],
  );
}
