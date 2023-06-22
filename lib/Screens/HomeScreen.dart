import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/Compents/CategoryList.dart';
import 'package:medical_app/Compents/Constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int _currentIndex = 0;

late AnimationController controller;
late Animation animation;

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1400));
    animation = CurvedAnimation(parent: controller, curve: Curves.ease);
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade100,
        currentIndex: _currentIndex,
        iconSize: 25,
        selectedItemColor: const Color(0xFF8ca6db),
        showSelectedLabels: true,
        enableFeedback: true,
        type: BottomNavigationBarType.shifting,
        elevation: 3,
        onTap: (newvalue) {
          setState(() {
            _currentIndex = newvalue;
          });
        },
        items: bottomAppBarItems,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 60),
          child: Column(children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hasan Batal",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/hero.jpg"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            AnimatedBuilder(
                animation: animation,
                builder: (context, child) {
                  return Container(
                    padding:
                        const EdgeInsets.only(top: 5, bottom: 5, right: 10),
                    margin: const EdgeInsets.only(right: 20),
                    height: animation.value * 160 + 5,
                    width: 340,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "images/2.png",
                          // width: 120,
                          height: 140,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "How do you feel?",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Fill out your medical\ncard right now",
                              style: TextStyle(
                                  color: Colors.grey.shade900,
                                  fontWeight: FontWeight.w400),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                margin: const EdgeInsets.only(top: 20),
                                height: 50,
                                alignment: Alignment.center,
                                child: const Text(
                                  "Get Started",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 94, 69, 185),
                                        Color.fromARGB(255, 164, 129, 230)
                                      ],
                                      begin: Alignment.centerRight,
                                      end: Alignment.centerLeft,
                                      stops: [0.2, 0.8]),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.deepPurple.shade100,
                    ),
                  );
                }),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: const Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: Colors.grey,
                  ),
                  hintText: "How can we help you ?",
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CategoryList(),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Doctor List ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text(
                    "See all",
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 190,
              child: ListView(
                  scrollDirection: Axis.horizontal, children: dcotorList),
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
