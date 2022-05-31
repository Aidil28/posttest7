import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:posttest4_1915016140_m_aidil_s_a/MainPage.dart';
import 'package:posttest4_1915016140_m_aidil_s_a/main_screen.dart';
import 'LandingPage.dart';
import 'package:get/get.dart';
import 'main_screen.dart';

// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Toko HandPhone',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: const Color(0xff0073AC),
      ),
    );
  }
}

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 5), () {
      Get.off(MainScreen());
    });
  }
}

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final SplashScreenController spc = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 173, 246),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 200),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    image: DecorationImage(
                      image: AssetImage("assets/images/logohp.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(height: 50),
              Text("From"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HP Store Samarinda",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
