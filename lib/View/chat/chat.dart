// import 'package:casino_app/Const/color.dart';
// import 'package:casino_app/Widgets/app_bar.dart';
// import 'package:flutter/material.dart';
// import 'chat_text.dart';

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({Key? key}) : super(key: key);

//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: primary,
//         body: Column(children: [
//           Appbarr(
//             text: ' Customer Support',
//             iconCross: true,
//           ),
//           Expanded(
//               flex: 4,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: size.height * 0.05,
//                       ),

//                       // const Center(child: Text('Four days ago')),
//                       SizedBox(
//                         height: size.height * 0.01,
//                       ),

//                       ChatText(
//                         texxt: 'Yeah. Right! As if that would\nhappen!',
//                         color: whiteColor,
//                         textcolor: secondary,
//                         val: Alignment.topLeft,
//                       ),
//                       SizedBox(
//                         height: size.height * 0.02,
//                       ),
//                       ChatText(
//                         texxt: 'Anywho, gotta roll, G night!',
//                         color: secondary,
//                         textcolor: whiteColor,
//                         val: Alignment.topRight,
//                       ),
//                       SizedBox(
//                         height: size.height * 0.01,
//                       ),
//                       ChatText(
//                         texxt: 'Good Night!',
//                         color: whiteColor,
//                         textcolor: primary,
//                         val: Alignment.topLeft,
//                       ),
//                       SizedBox(
//                         height: size.height * 0.01,
//                       ),
//                       // const Center(child: Text('Today')),

//                       ChatText(
//                         texxt: 'Wassupp!!!!!',
//                         color: secondary,
//                         textcolor: whiteColor,
//                         val: Alignment.topRight,
//                       ),
//                       SizedBox(
//                         height: size.height * 0.02,
//                       ),
//                       ChatText(
//                         texxt: 'So what did I miss yesterday?',
//                         color: secondary,
//                         textcolor: whiteColor,
//                         val: Alignment.topRight,
//                       ),
//                       SizedBox(
//                         height: size.height * 0.02,
//                       ),
//                       ChatText(
//                         texxt:
//                             'So, while you were gone, a lot has happened, Let me give you a brief\nidea.',
//                         color: whiteColor,
//                         textcolor: secondary,
//                         val: Alignment.topLeft,
//                       ),
//                       SizedBox(
//                         height: size.height * 0.02,
//                       ),
//                       ChatText(
//                         texxt:
//                             'Natalie from HR cam to our floor\nlooking for Steven. Remember the\nmistake he had made last week?.\nIt was definitely related to this!!!!',
//                         color: whiteColor,
//                         textcolor: primary,
//                         val: Alignment.topLeft,
//                       ),
//                       SizedBox(
//                         height: size.height * 0.02,
//                       ),
//                       ChatText(
//                         texxt: 'You know about this,right?',
//                         color: whiteColor,
//                         textcolor: primary,
//                         val: Alignment.topLeft,
//                       ),
//                       SizedBox(
//                         height: size.height * 0.02,
//                       ),

//                       //           Container(
//                       //             alignment: Alignment.topLeft,
//                       //   child:  Padding(
//                       //     padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//                       //     child: Text(
//                       //       'Yeah,Right! as if that would\nhappen!',
//                       //       style: TextStyle(
//                       //           color: Colors.black, fontSize: 16,),
//                       //     ),
//                       //   ),

//                       //   decoration: BoxDecoration(
//                       //       color: Color.fromARGB(255, 214, 208, 208),
//                       //       borderRadius: BorderRadius.circular(10)),
//                       // ),
//                     ],
//                   ),
//                 ),
//               )),
//           _sendMessageArea()
//         ]),
//       ),
//     );
//   }
// }

// _sendMessageArea() {
//   return Container(
//     padding: EdgeInsets.symmetric(horizontal: 8),
//     height: 70,
//     color: primary,
//     child: Row(
//       children: <Widget>[
//         Expanded(
//           child: SizedBox(
//             height: 40,
//             width: 80,
//             child: TextFormField(
//               obscureText: false,

//               // initialValue: 'Input text',
//               decoration: InputDecoration(
//                   hintText: 'Type here...',
//                   hintStyle: const TextStyle(color: whiteColor),
//                   disabledBorder: InputBorder.none,
//                   border: InputBorder.none,
//                   suffixIcon: const Icon(Icons.attach_file, color: Colors.grey),
//                   fillColor: secondary,
//                   filled: true,
//                   labelStyle: const TextStyle(color: Colors.grey),
//                   enabledBorder: UnderlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide.none,
//                   ),
//                   focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide.none,
//                       borderRadius: BorderRadius.circular(10))),
//             ),
//           ),
//         ),
//         const SizedBox(
//           width: 10,
//         ),
//         Container(
//           height: 40,
//           width: 90,
//           decoration: BoxDecoration(
//               color: buttoncolor, borderRadius: BorderRadius.circular(20)),
//           child: const Center(
//               child: Text(
//             'Send',
//             style: TextStyle(color: Colors.white),
//           )),
//         ),
//       ],
//     ),
//   );
// }
