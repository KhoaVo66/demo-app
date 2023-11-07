import 'package:demo_app/pages/page_login.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                top: 40,
                child: Container(
                  width: 344,
                  height: 445,
                  child: Image(
                    image: AssetImage('assets/page3/page3.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                  left: 50, top: 500,
                  child: Center(
                    child: Text(
                      'Create a trip and get offers',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
              ),
              Positioned(
                  left: 62, top: 540,
                  child: Container(
                    width: 280,
                    height: 73,
                    child: Text(
                      'Fellow4U helps you save time and get offers from hundred local guides that suit your trip.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
              ),
              Positioned(
                  left: 33, bottom: 40, right: 33,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login()),);
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        backgroundColor: Color(0xff00CEA6)
                    ),
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
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
