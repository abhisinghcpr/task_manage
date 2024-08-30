import 'dart:async';
import 'package:flutter/material.dart';
import 'package:task_manage/view/screens/auth/signup_screen.dart';
import '../../utils/colors/app_color.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 5),
          () {
       Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SignupPage(),));
      },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      body: Center(
        child: Hero(
          tag: "app_logo",
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 100,
            child: Icon(
              Icons.task,
              color: AppColors.primaryColor,
              size: 150,
            ),
          ),
        ),
      ),
    );
  }
}


