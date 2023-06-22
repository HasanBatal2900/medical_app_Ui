import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 100,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20.0)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.tooth,
                  color: Color(0xFF8ca6db),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Dentist")
              ],
            ),
          ),
          Container(
            width: 100,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20.0)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.userDoctor,
                  color: Color(0xFF8ca6db),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Surgon")
              ],
            ),
          ),
          Container(
            width: 100,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20.0)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.lungs,
                  color: Color(0xFF8ca6db),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Lungs")
              ],
            ),
          ),
          Container(
            width: 100,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20.0)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.monitor_heart_outlined,
                  color: Color(0xFF8ca6db),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Heart")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
