import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:x_app/AppRoutes/routes.dart';
import 'package:x_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: ((context, child) {
        return GetMaterialApp(
          title: "Trading App",
          debugShowCheckedModeBanner: false,
          getPages: AppRoutes.appRoutes,
          initialRoute: AppRoutes.bottomnav,
        );
      }),
    );
  }
}
