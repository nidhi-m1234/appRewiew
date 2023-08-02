import 'package:abc/record.dart';
import 'package:flutter/material.dart';

class LinkedFascility extends StatefulWidget {
  const LinkedFascility({super.key});

  @override
  State<LinkedFascility> createState() => _LinkedFascilityState();
}

class _LinkedFascilityState extends State<LinkedFascility> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: 350,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20.0,
          horizontal: 10.0),
          children:  [
            const Text(
              "My Linked Fascility",
              style: TextStyle(),
            ),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40.0,
                  horizontal: 15.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const  Text("My Vaccine"),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Records()));
                    }, child:const  Text("Pull Records"))
                  ],
                ),
              ),
            )
            
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: const Icon(Icons.add),),
    );
  }
}
