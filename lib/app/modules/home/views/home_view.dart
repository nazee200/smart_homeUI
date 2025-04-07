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

    return Obx(() => Scaffold(
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
                      padding: const EdgeInsets.all(25),
                      itemCount: controller.SmartDevices.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                      itemBuilder: (builder, index) {
                        return Smartdevices(
                          smartdevicename: controller.SmartDevices[index][0],
                          iconpath: controller.SmartDevices[index][1],
                          status: controller.SmartDevices[index][2],
                          OnChanged: (value) =>
                              controller.statuschange(value, index),
                        );
                      }))
            ],
          ),
        ));
  }
}
