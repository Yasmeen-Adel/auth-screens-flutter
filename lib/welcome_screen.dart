/*// import 'package:flutter/material.dart';
// import 'login_screen.dart';

// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // الخلفية
//           Positioned.fill(
//             child: Image.asset(
//               'assets/background1.jpg', 
//               fit: BoxFit.cover,
//             ),
//           ),

//           // تدرج شفاف
//           Positioned.fill(
//             child: Container(color: Colors.black.withOpacity(0.3)),
//           ),

//           // المحتوى
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Spacer(),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 24.0),
//                 child: Padding(
//                   padding: EdgeInsets.only(bottom: 260.0),
//                   child: Text(
//                     "Hot. Fresh. Delicious.\nYour Pizza is Waiting!",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 28,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       shadows: [
//                         Shadow(
//                           color: Colors.black45,
//                           blurRadius: 6,
//                           offset: Offset(2, 2),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const Spacer(),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 24,
//                   vertical: 24,
//                 ),
//                 child: SizedBox(
//                   width: double.infinity,
//                   height: 52,
//                   child: ElevatedButton(
                  
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFFFF7043), // Orange
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       elevation: 6,
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const LoginScreen(),
//                         ),
//                       );
//                     },
//                     child: const Text(
//                       'Order Now',
                      
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         // letterSpacing: 1,
                        
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
*/

import 'package:flutter/material.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Text(
              "Hot. Fresh. Delicious.\nYour Pizza is Waiting!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: const Text("Order Now"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
