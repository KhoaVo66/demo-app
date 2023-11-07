import 'package:demo_app/pages/explore.dart';
import 'package:demo_app/pages/forgot_password.dart';
import 'package:demo_app/pages/nav_screen.dart';
import 'package:demo_app/pages/page_sign_up.dart';
import 'package:demo_app/shared/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   // TRY THIS: Try changing the color here to a specific color (to
        //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        //   // change color while the other colors stay the same.
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //   // Here we take the value from the MyHomePage object that was created by
        //   // the App.build method, and use it to set our appbar title.
        //   title: Text(widget.title),
        // ),
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
              top: 160,
              left: 0,
              right: 0,
              bottom: 0,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          'Welcome back, Yoo Jin',
                          style: TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 0, 206, 166),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 30,),
                        SizedBox(
                          width: 350,
                          height: 60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                width: 350,
                                height: 30,
                                child: TextField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey)
                                    ),
                                    hintText: 'Email',
                                    hintStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 350,
                          height: 60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Password',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                width: 350,
                                height: 30,
                                child: TextField(
                                  obscureText: true,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey)
                                    ),
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        InkWell(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ForgotPassword()),);
                          },
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        SizedBox(
                          width: 350,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 0, 206, 166)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  )
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => NavScreen()),);
                            },
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'or sign in with',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (){},
                              child: SvgPicture.asset('assets/login/facebook.svg',width: 40,height: 40),
                            ),
                            SizedBox(width: 15,),
                            InkWell(
                              onTap: (){},
                              child: SvgPicture.asset('assets/login/kakaotalk.svg', width: 40, height: 40),
                            ),
                            SizedBox(width: 15,),
                            InkWell(
                              onTap: (){},
                              child: SvgPicture.asset('assets/login/line.svg',width: 40, height: 40),
                            ),
                          ],
                        ),
                        SizedBox(height: 80,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don’t have an account?',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            TextButton(
                              onPressed: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => SignUp()),);
                              },
                              style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                              child: Text('Sign Up',
                                style: TextStyle(
                                  color: Color(0xff00CEA6),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}


