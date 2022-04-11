import 'dart:ui';
import 'package:flutter/material.dart';
import 'main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscuretext = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return
      Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor:Colors.black.withOpacity(0.6),


        body:SingleChildScrollView(


          child: BackdropFilter(

          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

              child: Container(
                margin: EdgeInsets.only(top:100),
                color: Colors.transparent,
                child: Column(


                  children: [

                    Center(

                      child: SizedBox(
                        width: 290,

                        child: TextField(
                          style: TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.withOpacity(0.3),
                            hintText: "User Name",
                            hintStyle: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 150,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    Center(
                      child: SizedBox(
                        width: 290,
                        child: TextFormField(
                          obscureText: _obscuretext,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.withOpacity(0.3),
                            hintText: 'password',
                            hintStyle: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 150,
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() => _obscuretext = !_obscuretext);
                              },
                              child: Icon(
                                _obscuretext
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.yellow,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
          Row(
                  children: [
          Column(
          children: [
          Padding(
          padding: const EdgeInsets.fromLTRB(53, 5, 0, 0),
          child: Wrap(
                children: [
                  Text(
                    'Forget your user Id or',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    ' Register now',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.grey,
                      fontSize: 19,
                    ),
                  ),
                ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(43, 10, 0, 0),
          child: Wrap(
                children: [
                  Text(
                    'Not Registered',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    ' Register now',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.grey,
                      fontSize: 19,
                    ),
                  ),
                ],
          ),
        ),


                  ],
                ),


],
    ),

                    SizedBox(height: 10),
                    Center(
                      child: Container(
                        width: 150,
                        height: 80,
                        margin: EdgeInsets.fromLTRB(100, 0, 70, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 20,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.green)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 100,
                      height: 150,
                      margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Image(
                        image: AssetImage(
                          'assets/icon-fingerprint.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: Center(
                        child: Text(
                          "     LOG IN FACE ID/TOUCH ID",
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),




    );



  }
}

