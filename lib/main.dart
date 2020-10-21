
import 'package:flutter/material.dart';
import 'package:ssui_hw1/gui2/guiboxes.dart';

void main() {

  runApp(new MyApp());
}




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: Color.fromRGBO(169, 36, 52, 1)),
        
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: GuiScreen2(MediaQuery.of(context).size)
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}





// import 'package:google_fonts/google_fonts.dart';


// // final Map<String, dynamic> topMenu = {
// //   "T-SHIRTS": (context)=>, 
// //   "HOODIES", 
// //   "CREATE YOUR OWN", 
// //   "ABOUT US", 
// //   "YOUR ACCOUNT"
// //   };
// void main() {
//   runApp(MyApp());
// }


// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//           primarySwatch: Colors.blue,
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//           accentColor: Color.fromRGBO(169, 36, 52, 1),
//           textTheme: GoogleFonts.catamaranTextTheme()),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key}) : super(key: key);
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(children: [
//           Container(
//             height: 30.0,
//             width: double.infinity,
//             color: Theme.of(context).accentColor),
//   Container(
//           height:120,
//           width:double.infinity,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 50.0),
//             child: Row(
//               children: [
//                 Container(
//                     height: 120.0,
//                     width: 200.0,
//                     child: Image.asset("assets/site_images/logo.png")),
//                 Expanded(
//                     child: Center(
//                   child: Text(
//                     "Scotty Shirts U Illustrated (SSUI)",
//                     style: Theme.of(context)
//                         .textTheme
//                         .headline1
//                         .copyWith(fontSize: 40),
//                   ),
//                 ))
//               ],
//             ),
//           ),
//         ),
//         // Nsv Bar
//        Container(color:Colors.grey, height: 1.0,width: double.infinity, ),
//       Container(
//         height: 50.0,
//         width: double.infinity,
//         child: Row(
//           children: topMenu.map((e) => ),
//         ),
//       ),
//      Container(color:Colors.grey, height: 1.0,width: double.infinity, ),
//       ])
//         // This trailing comma makes auto-formatting nicer for build methods.
//         );
//   }
// }


// class TopMenuOption extends StatefulWidget {
//   final String name;
//   final Function()
//   @override
//   _TopMenuOptionState createState() => _TopMenuOptionState();
// }

// class _TopMenuOptionState extends State<TopMenuOption> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }