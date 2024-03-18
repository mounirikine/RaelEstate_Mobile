import 'package:flutter/material.dart';


class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: Color.fromARGB(255, 245, 245, 245),
        hintText: "Search...",
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.filter_alt_outlined)

      ),
    );
  }
}

