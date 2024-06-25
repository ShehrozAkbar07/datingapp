import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Const/color.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  bool obsecure = false;
  bool obsecure2 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/message_back.png"),
                  fit: BoxFit.cover)),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                  child: Center(
                    child: Text(
                      'Messages',
                      style: TextStyle(
                          fontSize: 25.sp,
                          letterSpacing: 1.3,
                          color: whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(34),
                            topRight: Radius.circular(34))),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40.h,
                          ),
                          chatsContainer(
                            size: size,
                            name: "Alfredo Calzoni",
                            image: 'assets/images/c1.png',
                            time: '09:18',
                            message: 'What about that new jacket if I ...',
                          ),
                          chatsContainer(
                            size: size,
                            name: "Clara Hazel",
                            image: 'assets/images/c2.png',
                            time: '12:44',
                            message: 'I know right 😉',
                          ),
                          chatsContainer(
                            size: size,
                            name: "Brandon Aminoff",
                            image: 'assets/images/c3.png',
                            time: '09:06',
                            message: 'I’ve already registered, can’t wai...',
                          ),
                          chatsContainer(
                            size: size,
                            name: "Amina Mina",
                            image: 'assets/images/c4.png',
                            time: '08:32',
                            message: 'It will have two lines of heading ...',
                          ),
                          chatsContainer(
                            size: size,
                            name: "Savanna Hall",
                            image: 'assets/images/c5.png',
                            time: '09:18',
                            message: 'It will have two lines of heading ...',
                          ),
                          chatsContainer(
                            size: size,
                            name: "Sara Grif",
                            image: 'assets/images/c6.png',
                            time: '05:01',
                            message: 'Oh come on!! Is it really that gre...',
                          ),
                          chatsContainer(
                            size: size,
                            name: "Brandon Aminoff",
                            image: 'assets/images/c3.png',
                            time: '09:06',
                            message: 'I’ve already registered, can’t wai...',
                          ),
                          chatsContainer(
                            size: size,
                            name: "Amina Mina",
                            image: 'assets/images/c4.png',
                            time: '08:32',
                            message: 'It will have two lines of heading ...',
                          ),
                          chatsContainer(
                            size: size,
                            name: "Savanna Hall",
                            image: 'assets/images/c5.png',
                            time: '09:18',
                            message: 'It will have two lines of heading ...',
                          ),
                          SizedBox(
                            height: 70.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

Widget chatsContainer(
    {required Size size,
    required String name,
    required String image,
    required String time,
    required String message}) {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          Container(
            height: 95.h,
            width: double.infinity,
            // color: Colors.yellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(image)),
                      color: Colors.purple),
                ),
                // SizedBox(
                //   width: 20.w,
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 14.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width * 0.52,
                        // color: Colors.grey,
                        child: Text(
                          name,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: textColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        width: size.width * 0.52,
                        // color: Colors.grey,
                        child: Text(
                          message,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Container(
                          height: size.height * 0.03,
                          width: size.width * 0.03,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Text(
                        time,
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
            width: double.infinity,
            child: const Divider(
              color: Color(0xffeff0f1),
            ),
          ),
        ],
      ));
}
