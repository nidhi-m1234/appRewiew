import 'package:abc/linked.dart';
import 'package:abc/navbar.dart';
import 'package:abc/record.dart';
import 'package:abc/root.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;
  List<Widget> widgetList = const[
    RootPage(),
    Records(),
   LinkedFascility()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      body: Center(
        child: widgetList[myIndex],
      ),
      appBar: AppBar(
        title: const Text("HealthCare App"),
        actions: const  [
          //Icon(Icons.qr_code),
          Icon(Icons.share,
          ),
          Icon(Icons.notifications)
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.copy_all),
        label: "Records"),
         BottomNavigationBarItem(icon: Icon(Icons.link),
        label: "Linked Fascility")
      ]) ,
    );
  }
}