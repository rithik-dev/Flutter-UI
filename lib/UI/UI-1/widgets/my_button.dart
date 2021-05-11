import 'package:easy_container/easy_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const MyButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyContainer(
      child: Text(
        this.title,
        style: TextStyle(color: Colors.white, fontSize: 23),
      ),
      onTap: this.onTap,
      elevation: 0,
      customBorderRadius: BorderRadius.vertical(
        top: Radius.circular(0),
        bottom: Radius.circular(40),
      ),
      margin: 0,
      customPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
    );
  }
}
