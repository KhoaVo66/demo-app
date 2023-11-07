import 'package:flutter/material.dart';

class CurrentTrips extends StatelessWidget {
  const CurrentTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 301,
          color: Colors.green,
        ),
      ),
    );
  }
}
