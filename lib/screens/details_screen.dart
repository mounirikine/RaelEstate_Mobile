import 'package:flutter/material.dart';
import 'package:learn/models/item_model.dart';


class DetailsScreen extends StatefulWidget {
   DetailsScreen(this.item, {super.key});
  Item item;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blueAccent),
        title: Text(
          widget.item.title!,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300.0,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(16.0),
                  image: DecorationImage(
                      image: NetworkImage(
                        widget.item.thumb_url!),
                        fit: BoxFit.cover

                        )),
            )
          ],
        ),
      ),
    );
  }
}
