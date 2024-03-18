import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/models/item_model.dart';
import 'package:learn/widgets/search_field.dart';
import 'package:learn/widgets/selected_category.dart';
import 'package:learn/widgets/suggestionList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        toolbarHeight: 80.0,
        title: Row(
          children: [
            Icon(Icons.location_on,color: Colors.blue.shade600,
            ),
            Text("Agadir,Morroco",style: TextStyle(color: Colors.black),
            ),
            
          ],

          ),
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.grey.shade600,)
          )
          ],
      ),
      body: SingleChildScrollView(child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchField(),
            SelectedCategory(),
            SizedBox(height: 20.0,),
            SuggestionList("Recommendation For You", Item.recommendation),
            SizedBox(height: 20.0,),
            SuggestionList("Nearby You", Item.nearby),
          ],
        ),
        ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue.shade600,
          unselectedItemColor: Colors.grey.shade600,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: "Search"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart),label: "Favorites"),
            BottomNavigationBarItem(icon: Icon(Icons.message_outlined),label: "Messages"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person),label: "Person"),
          ],
        ),
    );
  }
}