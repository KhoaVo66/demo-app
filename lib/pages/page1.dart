import 'package:demo_app/pages/page_login.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: 30, right: 0,
              child: Image(
                  image: AssetImage('assets/page1/page1.png')
              ),
            ),
            Positioned(
                right: 30,
                bottom: 30,
                child: TextButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login()),);
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff777777),
                    ),
                  ),
                )
            )
          ],
        )
      )
    );
  }
}
