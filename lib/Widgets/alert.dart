// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// import '../Website/vault/vault_alert_container.dart';

// class SendMessageAlert extends StatefulWidget {
//   const SendMessageAlert({super.key});

//   @override
//   State<SendMessageAlert> createState() => _SendMessageAlertState();
// }

// class _SendMessageAlertState extends State<SendMessageAlert>
//     with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     TabController tabController = TabController(length: 2, vsync: this);
//     TextEditingController controller = TextEditingController();
//     Size size = MediaQuery.of(context).size;

//     return Dialog(
//         insetPadding: EdgeInsets.only(left: 25, right: 25),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Container(
//           height: size.height * 0.7,
//           width: size.width * 0.4,
//           decoration: BoxDecoration(
//               // color: Colors.black,
//               color: Color(0xff1d2b36),
//               borderRadius: BorderRadius.circular(10)),
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.w),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         const Icon(
//                           Icons.money,
//                           color: const Color(0xffb3bbd1),
//                         ),
//                         Text('Vault',
//                             style: TextStyle(
//                                 fontSize: 4.sp,
//                                 color: const Color(0xffb3bbd1),
//                                 fontWeight: FontWeight.bold)),
//                       ],
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Get.back();
//                       },
//                       child: const Icon(
//                         Icons.close,
//                         color: Color(0xffb3bbd1),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10.h,
//                 ),
//                 // Text(
//                 //   'Compose Message',
//                 //   style: TextStyle(
//                 //       color: black,
//                 //       fontSize: 16.sp,
//                 //       fontWeight: FontWeight.bold),
//                 // ),
//                 SizedBox(
//                   height: 10.h,
//                 ),
//                 Container(
//                   height: size.height * 0.067,
//                   width: size.width * 0.4,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Color(0xff13212d)),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(2.0),
//                         child: TabBar(
//                             unselectedLabelColor: Colors.white,
//                             // labelColor: Color(AppColors.primary),
//                             indicatorPadding: EdgeInsets.zero,
//                             indicatorWeight: 0,
//                             indicatorSize: TabBarIndicatorSize.tab,
//                             indicator: BoxDecoration(
//                                 color: Color(0xff344452),
//                                 borderRadius: BorderRadius.circular(28)),
//                             controller: tabController,
//                             tabs: [
//                               Container(
//                                 height: 20,
//                                 child: const Tab(
//                                   text: 'Deposit',
//                                 ),
//                               ),
//                               const Tab(
//                                 text: 'Withdraw',
//                               ),
//                             ]),
//                       ),
//                     ],
//                   ),
//                 ),

//                 SizedBox(
//                   height: 30.h,
//                 ),
//                 Expanded(
//                     child:
//                         TabBarView(controller: tabController, children: const [
//                   VaultAlert(),
//                   VaultAlert(),
//                 ]))
//                 // CustomTextField(
//                 //     text:
//                 //         'We are sorry for the delay, We will get to you as soon as possible ',
//                 //     maxlines: 7,
//                 //     validation_value: 'validation_value',
//                 //     controller: controller),
//                 // SizedBox(
//                 //   height: 20.h,
//                 // ),
//                 // Padding(
//                 //   padding: EdgeInsets.symmetric(horizontal: padding),
//                 //   child: InkWell(
//                 //       onTap: () {
//                 //         Get.back();
//                 //       },
//                 //       child: Button(texxt: 'Send')),
//                 // )
//               ],
//             ),
//           ),
//         )

//         // title: Text('Hello'),
//         );
//   }
// }
