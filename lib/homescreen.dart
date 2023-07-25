// import 'package:flutter/material.dart';
// import 'dart:math';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int leftDiceNumber = 1;
//   int RightDiceNumber = 1;

//   void roll() {
//     setState(() {
//       leftDiceNumber = Random().nextInt(6) + 1;
//       RightDiceNumber = Random().nextInt(6) + 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: Text('dicee'),
//       ),
//       body: Center(
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Row(
//             children: [
//               Expanded(
//                 child: Image(
//                   image: AssetImage('images/dice-png-$leftDiceNumber.png'),
//                 ),
//               ),
//               Expanded(
//                   child: Image(
//                 image: AssetImage('images/dice-png-$RightDiceNumber.png'),
//               ))
//             ],
//           ),
//           ElevatedButton(
//             onPressed: roll,
//             child: Text('Roll'),
//           )
//         ]),
//       ),
//     );
//   }
// }





//copy


// import 'package:flutter/material.dart';
// import 'package:flutter_catalog/homescreen.dart';

// void main() {
//   runApp(
//     MyApp(),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }

// ........................................................................

// flutter decoder

// import 'package:flutter/material.dart';
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

// void contactUs(BuildContext context) {
//   var alertBox = AlertDialog(
//     title: Text("Contact Us"),
//     content: Text("ast136431@gmail.com"),
//     actions: <Widget>[
//       ElevatedButton(
//         child: Text("close"),
//         onPressed: () {
//           Navigator.of(context).pop();
//         },
//       )
//     ],
//   );
// }

//  showDialog{(context: context, builder: (BuildContext context)
//  {
//    return alertBox;
//  });
//  }


//.............................................................................................................

//rolling dice with samll size

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
//                 'images/dice-png-$leftDiceNumber.png',
//                 width: 100,
//                 height: 100,
//               ),
//             ),
//             GestureDetector(
//               onTap: rollDice,
//               child: Image.asset(
//                 'images/dice-png-$rightDiceNumber.png',
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

//..............................................................................................................



