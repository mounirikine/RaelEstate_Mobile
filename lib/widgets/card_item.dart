// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:learn/models/item_model.dart';

class CardItem extends StatefulWidget {
  CardItem(this.item, this.onTap, {super.key});
  Item item;
  Function()? onTap;

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: Color(0xfcf9f8),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color:Colors.grey.shade200)
      ),
      child: InkWell(
        onTap: (){},
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
              width: double.infinity,
              height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey.shade200,
                image: DecorationImage(
                  image: NetworkImage(widget.item.thumb_url!),
                  fit: BoxFit.cover
                )
                
              ),  
              ),
              SizedBox(height: 10.0,),
              Text(
                widget.item.category!,
                style: TextStyle(
                  color: Colors.blue.shade600,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
                ),
                

              ),SizedBox(height: 8.0,),
              Text(
                widget.item.title!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8.0,),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  Text(
                    widget.item.location!,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      color: Colors.grey

                    ),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              SizedBox(height: 8.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.item.price}\$ /Month",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 22.0
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  IconButton(
                    onPressed: (){},
                     icon: Icon(Icons.favorite_outline)

                     )
                ],
              )
            ],

          ),
        ),
        ),
    );
  }
}
