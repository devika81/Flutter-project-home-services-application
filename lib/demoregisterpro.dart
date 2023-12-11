// // // ignore_for_file: prefer_const_constructors

// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:home_services_app/login_provider.dart';

// class ScreenRegisterProvider extends StatefulWidget {
//   const ScreenRegisterProvider({super.key});

//   @override
//   State<ScreenRegisterProvider> createState() => _ScreenRegisterProviderState();
// }

// class _ScreenRegisterProviderState extends State<ScreenRegisterProvider> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(204, 245, 242, 242),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.android,
//                 size: 100,
//               ),

//               //Hello there!!
//               Text(
//                 'Hello there!',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
//               ),
//               SizedBox(
//                 height: 12,
//               ),
//               Text(
//                 'Register with your credentials!',
//                 style: TextStyle(fontSize: 20),
//               ),
//               SizedBox(height: 50),

//               // username textfield

//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     border: Border.all(color: Colors.white),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20.0),
//                     child: TextField(
//                       decoration: InputDecoration(
//                           border: InputBorder.none, hintText: 'username'),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               //service provided

//               //password
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     border: Border.all(color: Colors.white),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20.0),
//                     child: TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                           border: InputBorder.none, hintText: 'password'),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),

//               // confirm password
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     border: Border.all(color: Colors.white),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20.0),
//                     child: TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'confirm password'),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),

//               // sign up button
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Container(
//                   padding: EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     color: Colors.deepPurple,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Sign Up',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),

//               // Already a member! login now
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Already a member!',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   TextButton(
//                       onPressed: () {
//                         //Navigate to the provider login page
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => ScreenLoginProvider()),
//                         );
//                       },
//                       child: Text(
//                         'Login now',
//                         style: TextStyle(
//                             color: Colors.blue, fontWeight: FontWeight.bold),
//                       ))
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
