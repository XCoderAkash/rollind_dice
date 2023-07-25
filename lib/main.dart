// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int currentButton = 0;
//   List<String> buttonList01 = [
//     "https://images.unsplash.com/photo-1589182373726-e4f658ab50f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80",
//     "https://images.unsplash.com/photo-1589182373726-e4f658ab50f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80",
//   ];
//   List<String> buttonList02 = [
//     "https://thumbs.dreamstime.com/b/scenic-view-moraine-lake-mountain-range-sunset-landscape-canadian-rocky-mountains-49666349.jpg",
//     "https://thumbs.dreamstime.com/b/scenic-view-moraine-lake-mountain-range-sunset-landscape-canadian-rocky-mountains-49666349.jpg",
//   ];
//   List<String> buttonList03 = [
//     "https://images.unsplash.com/photo-1589802829985-817e51171b92?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8&w=1000&q=80",
//     "https://images.unsplash.com/photo-1589802829985-817e51171b92?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8&w=1000&q=80",
//   ];
//   List<String> mainList = [];

//   @override
//   void initState() {
//     // TODO: implement initState
//     mainList = buttonList01;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height / 2,
//                 color: Color(0xff0F2940),
//               )
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SafeArea(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.menu,
//                           color: Colors.white,
//                         )),
//                     IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.search,
//                           color: Colors.white,
//                         ))
//                   ],
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(left: 16.0, top: 40.0, bottom: 30.0),
//                 child: Text(
//                   "Explore\nthe world",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 38,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: mainList.length + 1,
//                   itemBuilder: (context, index) {
//                     if (index == 0) {
//                       return RotatedBox(
//                         quarterTurns: 3,
//                         child: Padding(
//                           padding: const EdgeInsets.only(
//                               top: 20, left: 20, right: 20),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     currentButton = 2;
//                                     mainList = buttonList03;
//                                   });
//                                 },
//                                 child: Text("Flutter",
//                                     style: TextStyle(
//                                       color: currentButton == 2
//                                           ? Colors.amber
//                                           : Colors.black,
//                                     )),
//                               ),
//                               SizedBox(
//                                 width: 100.0,
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     currentButton = 1;
//                                     mainList = buttonList02;
//                                   });
//                                 },
//                                 child: Text("Flutter",
//                                     style: TextStyle(
//                                       color: currentButton == 1
//                                           ? Colors.amber
//                                           : Colors.black,
//                                     )),
//                               ),
//                               SizedBox(
//                                 width: 100.0,
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     currentButton = 0;
//                                     mainList = buttonList01;
//                                   });
//                                 },
//                                 child: Text(
//                                   "Flutter",
//                                   style: TextStyle(
//                                     color: currentButton == 0
//                                         ? Colors.amber
//                                         : Colors.white,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     } else {
//                       return Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             child: Container(
//                               margin: EdgeInsets.all(20.0),
//                               width: 250,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(12.0),
//                               ),
//                               child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(12.0),
//                                   child: Image.network(
//                                     mainList[index - 1],
//                                     fit: BoxFit.cover,
//                                   )),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 20),
//                             child: Text("Mountain",
//                                 style: TextStyle(fontSize: 26)),
//                           ),
//                           Padding(
//                             padding:
//                                 const EdgeInsets.only(left: 20, bottom: 26.0),
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.location_on,
//                                   color: Colors.amber,
//                                 ),
//                                 Text("Mountain",
//                                     style: TextStyle(
//                                         fontSize: 14, color: Colors.grey))
//                               ],
//                             ),
//                           ),
//                         ],
//                       );
//                     }
//                   },
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// import 'dart:math';
// import 'package:flutter/material.dart';

// void main() => runApp(DiceApp());

// class DiceApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DicePage(),
//     );
//   }
// }

// class DicePage extends StatefulWidget {
//   @override
//   _DicePageState createState() => _DicePageState();
// }

// class _DicePageState extends State<DicePage> {
//   int leftDiceNumber = 1;
//   int rightDiceNumber = 1;

//   void rollDice() {
//     setState(() {
//       leftDiceNumber = Random().nextInt(6) + 1;
//       rightDiceNumber = Random().nextInt(6) + 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dice Roller'),
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             GestureDetector(
//               onTap: rollDice,
//               child: Image.asset(
//                 'assets/images/diceImage$leftDiceNumber.png',
//                 width: 100,
//                 height: 100,
//               ),
//             ),
//             GestureDetector(
//               onTap: rollDice,
//               child: Image.asset(
//                 'assets/images/diceImage$rightDiceNumber.png',
//                 width: 100,
//                 height: 100,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// // ignore: unnecessary_import
// import 'package:flutter/widgets.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Hello world Traval App"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             //for multiply child use row and column
//             children: <Widget>[
//               Text(
//                 "Treaver Now",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//               ),
//               Text(
//                 "Discover The World",
//                 style: TextStyle(fontSize: 15),
//               ),
//               Image.network(
//                 "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg",
//                 height: 300,
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text("Nature"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
