import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer(
                          Icons.save, Colors.grey[300], Colors.grey[500], 1),
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 150,
                        height: 150,
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
                      CustomContainer(Icons.more_horiz, Colors.grey[300],
                          Colors.grey[500], 1),
                    ],
                  ),
                  SizedBox(
                    height: 92,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomRow(
                          backgroundColor: Colors.grey[200],
                          text1: 'Holix',
                          text2: 'Flume',
                          icon: Icons.play_arrow,
                          color: Colors.grey[300],
                          iconColor: Colors.grey[500],
                          index: 1,
                        ),
                        CustomRow(
                          backgroundColor: Colors.grey[200],
                          text1: 'Never BE Like You',
                          text2: 'Flume x kia',
                          icon: Icons.play_arrow,
                          color: Colors.grey[300],
                          iconColor: Colors.grey[500],
                          index: 1,
                        ),
                        CustomRow(
                          backgroundColor: Colors.indigo[100],
                          text1: 'Unavailable',
                          text2: 'Davido',
                          icon: Icons.stop,
                          color: Colors.indigo[300],
                          iconColor: Colors.grey[500],
                          index: 2,
                        ),
                        CustomRow(
                          backgroundColor: Colors.grey[200],
                          text1: 'Numb & Getting Cloder',
                          text2: 'Flume x Kucha',
                          icon: Icons.play_arrow,
                          color: Colors.grey[300],
                          iconColor: Colors.grey[500],
                          index: 1,
                        ),
                        CustomRow(
                          backgroundColor: Colors.grey[200],
                          text1: 'Say it',
                          text2: 'Flume',
                          icon: Icons.play_arrow,
                          color: Colors.grey[300],
                          iconColor: Colors.grey[500],
                          index: 1,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomContainer(Icons.fast_rewind, Colors.grey[300],
                            Colors.grey[500], 1),
                        CustomContainer(
                            Icons.pause, Colors.blue[300], Colors.white, 1),
                        CustomContainer(Icons.fast_forward, Colors.grey[300],
                            Colors.grey[500], 1),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  CustomContainer(this.icon, this.color, this.iconColor, this.index);
  IconData icon;
  Color? color;
  Color? iconColor;
  int index;

  @override
  Widget build(BuildContext context) {
    if (index == 1) {
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
          //size: 20,
          color: iconColor,
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: [
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
          size: 30,
          color: iconColor,
        ),
      );
    }
  }
}

class CustomRow extends StatelessWidget {
  CustomRow(
      {super.key,
      required this.text1,
      required this.text2,
      required this.icon,
      required this.color,
      required this.iconColor,
      required this.backgroundColor,
      required this.index});
  IconData icon;
  Color? color;
  Color? iconColor;
  Color? backgroundColor;
  String text1;
  String text2;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: '$text1\n',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                TextSpan(
                    text: text2,
                    style: TextStyle(color: Colors.grey[500], fontSize: 18)),
              ]),
            ),
            CustomContainer(icon, color, iconColor, index),
          ],
        ),
      ]),
    );
  }
}

// Center(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Container(
//                 padding: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   //color: Colors.amber,
//                   border: Border.all(width: 1, color: Colors.grey),
//                 ),
//                 child: const Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.account_circle,
//                           size: 70,
//                         ),
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Flutter McFlutter',
//                               style: TextStyle(
//                                   fontSize: 30, fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(height: 10),
//                             Text(
//                               'Experienced App Developer',
//                               style: TextStyle(fontSize: 20),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '123 Main Street',
//                           style: TextStyle(fontSize: 20),
//                         ),
//                         Text('(415) 555-0198', style: TextStyle(fontSize: 20)),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Icon(
//                           Icons.accessibility,
//                           size: 50,
//                         ),
//                         Icon(
//                           Icons.access_alarm,
//                           size: 50,
//                         ),
//                         Icon(
//                           Icons.ad_units,
//                           size: 50,
//                         ),
//                         Icon(
//                           Icons.ad_units_rounded,
//                           size: 50,
//                         ),
//                       ],
//                     ),
//                   ],
//                 )),
//           ),
//         ),
