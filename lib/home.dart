import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
with SingleTickerProviderStateMixin
 {
  late TabController _controller;

 
   @override
  void initState() {
    super.initState();
    _controller=TabController(length: 4, vsync: this,initialIndex: 1);
    
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Telegram"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {}, 
          icon: Icon(Icons.lock)),
          IconButton(onPressed: () {}, 
          icon: Icon(Icons.search)), 
        ],


        ) ,
          drawer: Drawer(
        
        child: ListView(
          
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                
                Navigator.pop(context);
              },
            ),
          ]
        )
        )  
    );
  }
}