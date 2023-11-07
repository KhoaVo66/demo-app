import 'package:demo_app/pages/page_login.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: 28,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 437,
                child: Image(
                    image: AssetImage('assets/page2/page2.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              left: 40, top: 520,
                child: Text(
                  'Many tours around the world',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                )
            ),
            Positioned(
              left: 62, top: 568,
                child: Container(
                  width: 280,
                  height: 73,
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                )
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
