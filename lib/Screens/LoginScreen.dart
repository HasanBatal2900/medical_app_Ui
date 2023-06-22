import 'package:flutter/material.dart';
import 'package:medical_app/Screens/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  late AnimationController fadeContorller;
  late Animation<double> fadeAnimation;

  late AnimationController scaleController;
  late Animation<double> scaleAnimtaion;

  @override
  void initState() {
    super.initState();
    scaleController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    scaleAnimtaion =
        CurvedAnimation(parent: scaleController, curve: Curves.easeInCubic);
    scaleController.forward();

    fadeContorller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900));
    fadeAnimation =
        CurvedAnimation(parent: scaleController, curve: Curves.easeOutQuint);
    fadeContorller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ScaleTransition(
            scale: scaleAnimtaion,
            child: SizedBox(
              height: 550,
              child: Image.asset("images/1.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "All specialists in one app",
              style: TextStyle(
                  color: Colors.blueGrey.shade900,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Text(
              "Find Your doctor and make an\nappointment with one tap",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey.shade800,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                    fullscreenDialog: true,
                    transitionDuration: const Duration(milliseconds: 300),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      animation = CurvedAnimation(
                          parent: animation, curve: Curves.decelerate);

                      return ScaleTransition(
                        scale: animation,
                        alignment: Alignment.center,
                        child: child,
                      );
                    },
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return const HomeScreen();
                    },
                  ));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              height: 60,
              alignment: Alignment.center,
              child: const Text(
                "Get Started",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: const LinearGradient(
                    colors: [
                      Color(0xFF8ca6db),
                      Color.fromARGB(255, 129, 164, 230)
                    ],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    stops: [0.2, 0.8]),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}
