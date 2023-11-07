import 'package:demo_app/pages/page_login.dart';
import 'package:flutter/material.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});
  static const Color grey = Color(0xff555555);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Color.fromARGB(255, 0, 206, 166),
              )
          ),
          Positioned(
              top: 59, left: 32,
              child: Container(
                child: Image(
                  image: AssetImage('assets/login/logo.png'),
                ),
              )
          ),
          Positioned(
              top: 48.78, left: 92,
              child: Container(
                child: Image(
                  image: AssetImage('assets/login/background.png'),
                ),
              )
          ),
          Positioned(
              top: 135,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.elliptical(400, 95)
                    )
                ),
              )
          ),
          Positioned(
            top: 173,
            right: 32,
            left: 32,
            bottom: 0,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Check Email',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      'Please check your email for the instructions on how to reset your password.',
                      style: TextStyle(
                        color: grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 75),
                      child: Image(image: AssetImage('assets/envelope.png')),
                    ),
                    SizedBox(height: 100,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Back to',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login()),);
                          },
                          style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                          child: Text('Sign In',
                            style: TextStyle(
                              color: Color(0xff00CEA6),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
