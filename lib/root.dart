import 'package:flutter/material.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Card(
            child: Text("VZ Health",
            style: TextStyle(fontSize: 20.0,
            ),
            ),
          ),
          SizedBox(
            height: 100.0,
            width: 100.0,
            child: Center(
              child: Image.asset('image/abha.jpeg'),
            ),
          ),
          const Card(
            margin: EdgeInsets.symmetric(vertical:30.0,
            horizontal: 20.0),
            child: Text(
                "This application helps citizens to maintain their health record at one place. Citizen can create PHR address via Health ID, mobile number, email address. Application also provide provision to request the health data from the linked health care facilities on to the UMANG and have a longitudinal view of the health data at the finger tips. Option to deny or grant permission, If any doctors, labs or clinics request to view the health data"),
          )
        ],
      ),
    );
  }
}
