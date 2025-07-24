import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  List<TextEditingController> controllers = List.generate(
    6,
    (_) => TextEditingController(),
  );

  void _verifyOtp() {
    String otp = controllers.map((c) => c.text).join();
    if (otp.length == 6) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ProductListScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid 6-digit code')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Column(
        children: [
          const SizedBox(height: 100),
          const Text(
            "Enter Verification Code",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "We've sent a code to your phone.\nIt will expire in 00:30.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(6, (index) {
              return SizedBox(
                width: 45,
                child: TextField(
                  controller: controllers[index],
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                  decoration: const InputDecoration(
                    counterText: '',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    if (value.length == 1 && index < 5) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                ),
              );
            }),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: _verifyOtp,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Confirm',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              '← Back',
              style: TextStyle(color: Colors.deepOrange),
            ),
          ),
        ],
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'product_list_screen.dart';

// class OtpScreen extends StatefulWidget {
//   const OtpScreen({super.key});

//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }

// class _OtpScreenState extends State<OtpScreen> {
//   List<TextEditingController> controllers = List.generate(
//     6,
//     (_) => TextEditingController(),
//   );

//   void _verifyOtp() {
//     String otp = controllers.map((c) => c.text).join();
//     if (otp.length == 6) {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const ProductListScreen()),
//       );
//     } else {
//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(const SnackBar(content: Text('Enter 6-digit code')));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("OTP Verification")),
//       body: Padding(
//         padding: const EdgeInsets.all(24),
//         child: Column(
//           children: [
//             const Text(
//               "Enter the 6-digit code sent to your phone",
//               style: TextStyle(fontSize: 16),
//             ),
//             const SizedBox(height: 24),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(6, (index) {
//                 return SizedBox(
//                   width: 40,
//                   child: TextField(
//                     controller: controllers[index],
//                     maxLength: 1,
//                     keyboardType: TextInputType.number,
//                     textAlign: TextAlign.center,
//                     decoration: const InputDecoration(counterText: ''),
//                     onChanged: (value) {
//                       if (value.length == 1 && index < 5) {
//                         FocusScope.of(context).nextFocus();
//                       }
//                     },
//                   ),
//                 );
//               }),
//             ),
//             const SizedBox(height: 24),
//             ElevatedButton(onPressed: _verifyOtp, child: const Text("Confirm")),
//           ],
//         ),
//       ),
//     );
//   }
// }
