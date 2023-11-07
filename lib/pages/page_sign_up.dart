import 'package:demo_app/pages/page_login.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String radioButtonItem = 'Traveler';


  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   centerTitle: true,
      //   // TRY THIS: Try changing the color here to a specific color (to
      //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      //   // change color while the other colors stay the same.
      //   backgroundColor: Color.fromARGB(255, 0, 206, 166),
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title,
      //     style: TextStyle(
      //       color: Colors.white
      //     ),
      //   ),
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
            top: 170,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Radio(
                              visualDensity: VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity
                                ),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              activeColor: Color.fromARGB(255, 0, 206, 166),
                              value: 1,
                              groupValue: id,
                              onChanged: (val){
                                setState(() {
                                  radioButtonItem = 'Traveler';
                                  id = 1;
                                });
                              }),
                          SizedBox(width: 5,),
                          Text('Traveler',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(width: 65,),
                          Radio(
                              visualDensity: VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity
                              ),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              activeColor: Color.fromARGB(255, 0, 206, 166),
                              value: 2,
                              groupValue: id,
                              onChanged: (val){
                                setState(() {
                                  radioButtonItem = 'Guide';
                                  id = 2;
                                });
                              }),
                          SizedBox(width: 5,),
                          Text('Guide',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'First Name',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10,),
                              SizedBox(
                                width: 150,
                                height: 20,
                                child: TextField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:BorderSide(color: Colors.grey),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey),
                                      ),
                                      hintText: 'First Name',
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12
                                      )
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 50,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Last Name',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10,),
                              SizedBox(
                                width: 150,
                                height: 20,
                                child: TextField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:BorderSide(color: Colors.grey),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    hintText: 'Last Name',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Country',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            width: 400,
                            height: 20,
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                hintText: 'Country',
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            width: 400,
                            height: 20,
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                hintText: 'Type email',
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            width: 400,
                            height: 20,
                            child: TextField(
                              obscureText: true,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                hintText: 'Type password',
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Password has more than 6 letters',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Confirm Password',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            width: 400,
                            height: 20,
                            child: TextField(
                              obscureText: true,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                hintText: 'Confirm password',
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Center(
                        child: RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12
                                      ),
                                      text: 'By Signing Up, you agree to our '
                                  ),
                                  TextSpan(
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 206, 166),
                                          fontSize: 12
                                      ),
                                      text: 'Terms & Conditons',
                                      recognizer: TapGestureRecognizer()..onTap = () async {
                                        var url = "https://www.youtube.com/";
                                        if(await canLaunch(url)){
                                          await launch(url);
                                        } else{
                                          throw "Cannot load Url";
                                        }
                                      }
                                  )
                                ]
                            )
                        ),
                      ),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 300,
                            height: 50,
                            child: ElevatedButton(
                                onPressed: null,
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 0, 206, 166))
                                ),
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35,),
                      Center(
                        child:Row(
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
                      ),
                      SizedBox(height: 50,)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
