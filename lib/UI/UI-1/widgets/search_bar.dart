import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/screens/search_screen.dart';

class SearchBar extends StatelessWidget {
  final String text;

  const SearchBar({
    Key? key,
    this.text = "Search best food...",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyContainer(
      color: Colors.grey[200],
      elevation: 0,
      borderRadius: 10,
      padding: 15,
      onTap: () => Navigator.pushNamed(context, SearchScreen.id),
      child: Row(
        children: [
          const Icon(Icons.search),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              this.text,
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(width: 15),
          const Icon(Icons.filter_list_sharp),
        ],
      ),
    );
  }
}
