import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// MARK- Tutorial code
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//           child: Column(
//             verticalDirection: VerticalDirection.up,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 color: Colors.white,
//                 child: Text("Container 1"),
//                 // margin: EdgeInsets.only(left: 16),
//                 // padding: EdgeInsets.all(20),
//                 width: 100,
//                 height: 100,
//               ),
//               Container(
//                 color: Colors.white,
//                 child: Text("Container 2"),
//                 // margin: EdgeInsets.only(left: 16),
//                 // padding: EdgeInsets.all(20),
//                 width: 100,
//                 height: 100,
//               ),
//               Container(
//                 color: Colors.yellowAccent,
//                 child: Text("Container 3"),
//                 // margin: EdgeInsets.only(left: 16),
//                 // padding: EdgeInsets.all(20),
//                 width: 100,
//                 height: 100,
//               ),
//               Container(
//                 color: Colors.blue,
//                 child: Text("Container 4"),
//                 // margin: EdgeInsets.only(left: 16),
//                 // padding: EdgeInsets.all(20),
//                 width: 100,
//                 height: 100,
//               ),
//               Container(
//                 color: Colors.red,
//                 child: Text("Container 5"),
//                 // margin: EdgeInsets.only(left: 16),
//                 // padding: EdgeInsets.all(20),
//                 width: 100,
//                 height: 100,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("images/logo.png"),
                ),
                Text(
                  "Fury",
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                      fontSize: 30,
                  ),
                ),
                Text(
                  "iOS DEV",
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 5
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(15),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone,
                          size: 20,
                        ),
                        SizedBox(width: 50),
                        Text("Phone Number")
                      ],
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