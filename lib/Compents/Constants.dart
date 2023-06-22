import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Container> dcotorList = [
  Container(
    decoration: BoxDecoration(
        color: Colors.grey.shade100, borderRadius: BorderRadius.circular(20.0)),
    margin: const EdgeInsets.only(right: 10),
    width: 180,
    alignment: Alignment.center,
    child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Stack(children: [
          const CircleAvatar(
            radius: 55,
            backgroundColor: Color.fromARGB(255, 161, 235, 192),
          ),
          const Positioned(
              top: 7,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/d1.png"),
                radius: 53,
              )),
          Positioned(
            bottom: 0,
            right: 28,
            child: Container(
              width: 55,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 250, 198, 8)
                            .withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Icon(
                      FontAwesomeIcons.solidStar,
                      size: 12,
                      color: Colors.amber,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("4,9"),
                ],
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Dr.Arlene Mcoy",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Therapist 7,y.e",
          style: TextStyle(
              color: Colors.grey.shade500, fontWeight: FontWeight.w400),
        ),
      ],
    ),
  ),
  Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(20.0)),
      margin: const EdgeInsets.only(right: 10),
      width: 180,
      alignment: Alignment.center,
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Stack(children: [
          const CircleAvatar(
            radius: 55,
            backgroundColor: Color.fromARGB(255, 174, 198, 245),
          ),
          const Positioned(
              top: 7,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/d2.png"),
                radius: 53,
              )),
          Positioned(
            bottom: 0,
            right: 28,
            child: Container(
              width: 55,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 250, 198, 8)
                            .withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Icon(
                      FontAwesomeIcons.solidStar,
                      size: 12,
                      color: Colors.amber,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("4,8"),
                ],
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Dr.Arlene Mcoy",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Therapist 7,y.e",
          style: TextStyle(
              color: Colors.grey.shade500, fontWeight: FontWeight.w400),
        ),
      ])),
  Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(20.0)),
      margin: const EdgeInsets.only(right: 10),
      width: 180,
      alignment: Alignment.center,
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Stack(children: [
          const CircleAvatar(
            radius: 55,
            backgroundColor: Color.fromARGB(255, 245, 174, 245),
          ),
          const Positioned(
              top: 7,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/d5.png"),
                radius: 53,
              )),
          Positioned(
            bottom: 0,
            right: 28,
            child: Container(
              width: 55,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 250, 198, 8)
                            .withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Icon(
                      FontAwesomeIcons.solidStar,
                      size: 12,
                      color: Colors.amber,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("4,8"),
                ],
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Dr.Arlene Mcoy",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Therapist 7,y.e",
          style: TextStyle(
              color: Colors.grey.shade500, fontWeight: FontWeight.w400),
        ),
      ]))
];

List<BottomNavigationBarItem> bottomAppBarItems = [
  const BottomNavigationBarItem(
    activeIcon: Align(
      alignment: Alignment.center,
      child: Icon(
      FontAwesomeIcons.houseMedical,
        color: Color(0xFF8ca6db),
      ),
    ),
    label: "Home",
    icon: Icon(
      FontAwesomeIcons.houseMedical,
      color: Colors.black,
    ),
  ),
  const BottomNavigationBarItem(
    activeIcon: Icon(
      FontAwesomeIcons.comment,
      color: Color(0xFF8ca6db),
    ),
    label: "Comments",
    icon: Icon(
      FontAwesomeIcons.comment,
      color: Colors.black,
    ),
  ),
  const BottomNavigationBarItem(
    activeIcon: Icon(
      Icons.notifications,
      color: Color(0xFF8ca6db),
    ),
    label: "Notifcations",
    icon: Icon(
      Icons.notifications_outlined,
      color: Colors.black,
    ),
  ),
  const BottomNavigationBarItem(
    activeIcon: Icon(
      Icons.menu_outlined,
      color: Color(0xFF8ca6db),
    ),
    label: "Menu",
    icon: Icon(
      Icons.menu_outlined,
      color: Colors.black,
    ),
  ),
];
