import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

double value = 0.3;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        // appBar: AppBar(
        //   backgroundColor: Colors.grey[200],
        //   elevation: 0,
        // ),
        body: SafeArea(
          child: Container(
            //  padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BtnContainer(Icons.arrow_back_ios, Colors.grey[300],
                        Colors.grey[500]),
                    BtnContainer(
                        Icons.stop, Colors.grey[300], Colors.grey[500]),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/myImage.jpeg'),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 20,
                            offset: Offset(-15, -15),
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 20,
                            offset: Offset(15, 15),
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Yousef Abdellatif',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Flutter developer',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1:47',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                            Text('4:00',
                                style: TextStyle(color: Colors.grey[500])),
                          ],
                        ),
                        Slider(
                            activeColor: Colors.indigo[200],
                            inactiveColor: Colors.grey[300],
                            thumbColor: Colors.blue[200],
                            value: value,
                            onChanged: (vale) {
                              setState(() {
                                value = vale;
                              });
                            }),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BtnContainer(Icons.fast_rewind, Colors.grey[300],
                          Colors.grey[500]),
                      BtnContainer(Icons.pause, Colors.blue[300], Colors.white),
                      BtnContainer(Icons.fast_forward, Colors.grey[300],
                          Colors.grey[500]),
                    ],
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

class BtnContainer extends StatelessWidget {
  BtnContainer(this.icon, this.color, this.iconColor);
  IconData icon;
  Color? color;
  Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 20,
            offset: Offset(-15, -15),
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.grey[500]!,
            blurRadius: 20,
            offset: Offset(15, 15),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
