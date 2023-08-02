//import 'package:abc/root.dart';
import 'package:abc/record.dart';
import 'package:abc/root.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:  [
          const UserAccountsDrawerHeader(
            accountName: Text('Acb'),
            accountEmail: Text("example@gmail.com"),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title:const  Text("Home"),
            onTap:()                        
               {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const RootPage()));
               },
            
          ),
          ListTile(
            leading:const Icon(Icons.copy_outlined),
            title:const Text("Records"),
             onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Records()));
             },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app_rounded),
            title: const Text("Exit"),
             onTap:() {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>const RootPage()));
             },
          ),
        ],
      ),
    );
  }
}
