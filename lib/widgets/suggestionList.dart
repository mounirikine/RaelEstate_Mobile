import 'package:flutter/material.dart';
import 'package:learn/models/item_model.dart';
import 'package:learn/screens/details_screen.dart';
import 'package:learn/widgets/card_item.dart';

class SuggestionList extends StatefulWidget {
  SuggestionList(this.title, this.items, {super.key});
  String? title;
  List<Item> items;
  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title!,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: () {}, child: Text("See All"))
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Container(
            height: 340.0,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.items.length,
                itemBuilder: (context, index) =>
                    CardItem(widget.items[index], () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreen(widget.items[index])));
                    })),
          )
        ],
      ),
    );
  }

  
}
