/*// import 'package:flutter/material.dart';

// class ProductListScreen extends StatelessWidget {
//   const ProductListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, dynamic>> products = [
//       {
//         "image": "assets/product1.jpg",
//         "title": "Pepperoni Pizza",
//         "price": "\$12.99",
//         "description":
//             "Delicious pepperoni with mozzarella cheese and tomato sauce.",
//       },
//       {
//         "image": "assets/product2.jpg",
//         "title": "Veggie Pizza",
//         "price": "\$10.99",
//         "description": "Loaded with fresh veggies, cheese and herbs.",
//       },
//       {
//         "image": "assets/product3.jpg",
//         "title": "Cheese Burst",
//         "price": "\$14.99",
//         "description":
//             "Cheese-filled crust and rich toppings for cheese lovers!",
//       },
//       {
//         "image": "assets/product2.jpg",
//         "title": "Veggie Pizza",
//         "price": "\$10.99",
//         "description": "Loaded with fresh veggies, cheese and herbs.",
//       },
//       {
//         "image": "assets/product3.jpg",
//         "title": "Cheese Burst",
//         "price": "\$14.99",
//         "description":
//             "Cheese-filled crust and rich toppings for cheese lovers!",
//       },
//     ];

//     return Scaffold(
//       backgroundColor: const Color(0xFFFFF3E0),
//       appBar: AppBar(
//         title: const Text("Our Pizzas"),
//         backgroundColor: const Color(0xFFFF7043),
//         foregroundColor: Colors.white,
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16),
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           final product = products[index];

//           return Card(
//             margin: const EdgeInsets.symmetric(vertical: 10),
//             elevation: 6,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(16),
//             ),
//             color: Colors.white,
//             child: Padding(
//               padding: const EdgeInsets.all(12),
//               child: Row(
//                 children: [
//                   // صورة المنتج
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(12),
//                     child: Image.asset(
//                       product["image"],
//                       width: 100,
//                       height: 100,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   const SizedBox(width: 16),

//                   // التفاصيل
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           product["title"],
//                           style: const TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xFF5D4037), // بني غامق
//                           ),
//                         ),
//                         const SizedBox(height: 6),
//                         Text(
//                           product["price"],
//                           style: const TextStyle(
//                             fontSize: 16,
//                             color: Colors.green,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         const SizedBox(height: 6),
//                         Text(
//                           product["description"],
//                           style: const TextStyle(
//                             fontSize: 14,
//                             color: Colors.black54,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
*/
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        "title": "Pepperoni Pizza",
        "price": "\$12.99",
        "description": "Tasty pepperoni and cheese.",
      },
      {
        "title": "Veggie Pizza",
        "price": "\$10.99",
        "description": "Fresh vegetables with cheese.",
      },
      {
        "title": "Cheese Burst",
        "price": "\$14.99",
        "description": "Cheesy crust with rich toppings.",
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Our Pizzas")),
      body: ListView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(product["title"]!),
              subtitle: Text(product["description"]!),
              trailing: Text(product["price"]!),
            ),
          );
        },
      ),
    );
  }
}
