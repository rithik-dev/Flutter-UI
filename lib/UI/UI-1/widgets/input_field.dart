import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String title;
  final String value;
  final Widget? icon;

  const InputField({
    Key? key,
    required this.title,
    required this.value,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 21,
          ),
        ),
        const SizedBox(height: 10),
        EasyContainer(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  value,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15,
                  ),
                ),
              ),
              if (icon != null) icon!,
            ],
          ),
          alignment: Alignment.centerLeft,
          padding: 20,
          borderRadius: 15,
          margin: 0,
          color: Colors.grey[200],
          elevation: 0,
        ),
      ],
    );
  }
}
