import 'package:flutter/material.dart';

class Records extends StatefulWidget {
  const Records({super.key});

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height:200,
            width: 400, //double.infinity,
            child: Card(
              color: (Color.fromARGB(255, 86, 162, 237)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [                  
                  Icon(
                    Icons.account_box,
                    size: 90.0,
                  ),
                  Text("KYC Verified",
                  style: TextStyle(color: Colors.white),),
                  Text("View Complete Profile",
                  style: TextStyle(color: Colors.white),),
                ],
              ),
              
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(
              minimumSize: MaterialStatePropertyAll(Size(327, 50)),
            ),
            onPressed: () {},
            child: const Text("Link my Health Records"),
          )
        ],
      ),
    );
  }
}
