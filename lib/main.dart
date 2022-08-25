import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xffbe80ee),
                  Color(0xffe1b3bc),
                  Color(0xfff3e4d7)
                ])),
          ),
          Container(
            color: Color(0xfffb944c),
            height: 0.0712 * height,
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.323*height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 0.154*height,
                      width: 0.154*height,
                      decoration: BoxDecoration(
                          color: Color(0xff6462f3),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0.0619*height),
                              bottomRight: Radius.circular(0.0619*height))),
                    ),
                    SizedBox(width: 0.088*height,),
                    Container(
                      height: 0.154*height,
                      width: 0.154*height,
                      decoration: BoxDecoration(
                          color: Color(0xff6462f3),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(0.0619*height),
                              bottomLeft: Radius.circular(0.0619*height))),
                    )
                  ],
                ),
                Container(
                  height: 0.119*height,
                  width: 0.088*height,
                  decoration: BoxDecoration(
                      color: Color(0xffae70d3),
                      borderRadius: BorderRadius.all(Radius.circular(0.0309 * height))),
                ),
                SizedBox(
                  height: 0.0185*height,
                ),
                Container(
                  height: 0.049* height,
                  width: 0.283 * height,
                  decoration: BoxDecoration(
                      color: Color(0xff190e1f),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0.0309 * height),
                          topRight: Radius.circular(0.0309 * height))),
                ),
                SizedBox(
                  height: 0.0340*height,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PurpleCircle(height),
                    SizedBox(width: height*0.0247),
                    PurpleCircle(height),
                    SizedBox(width: height*0.0247),
                    PurpleCircle(height),
                    SizedBox(width: height*0.0247),
                    PurpleCircle(height),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }

  Widget PurpleCircle (height){
    return Container(
      height: 0.054*height,
      width: 0.054*height,
      decoration: BoxDecoration(
          color: Color(0xff5258fa),
          borderRadius: BorderRadius.all(
              Radius.circular(0.0340*height))),
    );
  }
}
