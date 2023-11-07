import 'package:demo_app/pages/check_email.dart';
import 'package:demo_app/pages/page_login.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
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
            bottom: 0,
            right: 32,
            left: 32,
            top: 173,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Forgot Password',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      'Input your email, we will send you an instruction to reset your password.',
                      style: TextStyle(
                        color: grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                      ),
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500
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
                    SizedBox(height: 50,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
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
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CheckEmail()),);
                        },
                        child: Text(
                          'SEND',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 150,),
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
