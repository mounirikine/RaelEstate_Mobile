import 'package:flutter/material.dart';

class SelectedCategory extends StatefulWidget {
  const SelectedCategory({super.key});

  @override
  State<SelectedCategory> createState() => _SelectedCategoryState();
}

class _SelectedCategoryState extends State<SelectedCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryButton(Icons.house_rounded,"Houses"),
          categoryButton(Icons.villa_rounded,"Villa"),
          categoryButton(Icons.apartment_rounded,"Apartement"),
          categoryButton(Icons.castle_rounded,"Catdtles"),
        ],
      ),
    );
  }
}

Widget categoryButton(IconData icon, String? text) {
  return Container(
    margin: EdgeInsets.all(18.0),
    height: 80.0,
    width: 80.0,
    decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade100)),
    child: InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 32.0,
            color: Colors.blue.shade600,
          ),
          Text("$text")
        ],
      ),
    ),
  );
}
