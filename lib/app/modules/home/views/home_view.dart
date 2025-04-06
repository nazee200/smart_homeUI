import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_home/app/utils/smartdevices.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    const double horizontalpadding = 40.0;
    const double verticalpadding = 25.0;
    List SmartDevices = [
      ["Smart AC", "assets/icons/air-conditioner.png"],
      ["Smart Fan", "assets/icons/fan.png"],
      ["Smart Light", "assets/icons/light-bulb.png"],
      ["Smart tv", "assets/icons/smart-tv.png"],
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 221, 221),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: horizontalpadding, vertical: verticalpadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/icons/menu.png', height: 45),
                  const Icon(
                    Icons.person,
                    size: 45,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Home,"),
                Text(
                  "IMRAN NAZEER",
                  style: TextStyle(fontSize: 40),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalpadding),
            child: Text("Smart Devices"),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: GridView.builder(
                  itemCount: SmartDevices.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (builder, context) {
                    return Smartdevices();
                  }))
        ],
      ),
    );
  }
}
