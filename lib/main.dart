/*// import 'package:flutter/material.dart';
// import 'welcome_screen.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Pizza App',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Color(0xFFD84315),
//         scaffoldBackgroundColor: Color(0xFFFFF3E0),
//         fontFamily: 'Arial',
//         colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFD84315)),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Color(0xFFD84315),
//             foregroundColor: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             textStyle: const TextStyle(fontSize: 18),
//           ),
//         ),
//       ),
//       home: WelcomeScreen(),
//     );
//   }
// }
*/

import 'package:flutter/material.dart';
import 'welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const WelcomeScreen(),
    );
  }
}
