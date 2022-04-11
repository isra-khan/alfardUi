import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

final List<String> imagesList = [
  'assets/bg-landing.png',
  'assets/bg-landing-three.png',
  'assets/bg-landing-two.png'
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FardanUi(),
    );
  }
}

class FardanUi extends StatefulWidget {
  const FardanUi({Key? key}) : super(key: key);

  @override
  State<FardanUi> createState() => _FardanUiState();
}

class _FardanUiState extends State<FardanUi> {
  var _currentIndex;
  int _selectedIndex = 0;
  @override
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Stack(

          children: [
            Builder(
              builder: (context) {
                final double height = MediaQuery.of(context).size.height;
                return CarouselSlider(
                  options: CarouselOptions(
                      height: height,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      }),
                  items: imagesList
                      .map((item) => Container(
                            margin: EdgeInsets.fromLTRB(0, 130,0,0),
                            child: Center(
                                child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                             //eight: height,
                               width: 1000,
                            )),
                          ))
                      .toList(),
                );
              },
            ),
            Column(
              children: [
              Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    child: Center(
                      child: Image.asset(
                        "assets/logo.png",
                        width: 400,
                        height: 80,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0),
                      ),
                    ),
                  ),

                SizedBox(
                  height: 200,
                ),
                Center(
                  child: Container(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow,
                        elevation: 20, // Elevation
                        side: BorderSide(
                            color: Colors.white, width: 2), // Shadow Color
                      ),
                      child: Text(
                        "SEND MONEY",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 250,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {
    /* Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  Login()),
                        );*/
    showCupertinoModalPopup(context: context, builder:
    (context) => Login(),
    );
    },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white.withOpacity(0.9),

                        elevation: 20, // Elevation
                        side: BorderSide(
                            color: Colors.yellow, width: 2), // Shadow Color
                      ),
                      icon: Icon(
                        Icons.lock,
                        color: Colors.green,
                      ),
                      label: Text(
                        "LOGIN/REGISTER",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imagesList.map((item) {
                    int index = imagesList.indexOf(item);
                    return Container(
                      width: 20.0,
                      height: 10.0,
                      decoration: BoxDecoration(

                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Colors.white
                            : Color.fromRGBO(0, 0, 0, 0.3),
                      ),
                    );
                  }).toList(),
                ),


                  ],
            ),
SizedBox(height:10),
            Positioned(
              top:0,
              left:0,
              right:0,
              bottom:0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child:
                   Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,

                      children: [

                        Container(
                          margin: EdgeInsets.only(bottom:0,top:100),
                          color: Colors.green,
                          width:290,
                          height:60,

                  child: Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,


                      children: [
                        Column(
                           children: [
                             ImageIcon(
                                 AssetImage("assets/rates.png"),
                                 color: Colors.white,
                                 size: 20,
                               ),
                             Text("Rates",style:TextStyle(color:Colors.white),),
                           ],
                         ),
                        Column(
                          children: [
                            ImageIcon(
                              AssetImage("assets/product.png"),
                              color: Colors.white,
                              size: 20,
                            ),
                            Text("Products",style:TextStyle(color:Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            ImageIcon(
                              AssetImage("assets/location.png"),
                              color: Colors.white,
                              size: 20,
                            ),
                            Text("Branches",style:TextStyle(color:Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            ImageIcon(
                              AssetImage("assets/more.png"),
                              color: Colors.white,
                              size: 20,
                            ),
                            Text("More",style:TextStyle(color:Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),

                   ),

                      ],
                    ),
                  ),
                ),
              ),


                    ],
                  ),



                ),

            );







     /* bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 50.0,right: 50.0),

              child: BottomNavigationBar(

                  backgroundColor: Colors.green,

                   items: const <BottomNavigationBarItem>[

                      BottomNavigationBarItem(
                       icon: ImageIcon(
                          AssetImage("assets/product.png"),
                          color: Colors.white,
                          size: 20,
                        ),
                        label: 'Home',
                      ),


                      BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage("assets/more.png"),
                          color: Colors.white,
                          size: 20,
                        ),
                        label: 'Home',
                      ),

                      BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage("assets/rates.png"),
                          color: Colors.white,
                          size: 20,
                        ),
                        label: 'Home',
                      ),

                    ],
                    currentIndex: _selectedIndex,
                    selectedItemColor: Colors.amber[800],
                    onTap: _onItemTapped,
                  ),
            ),*/







  }
}