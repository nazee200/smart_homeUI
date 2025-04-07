import "dart:math";

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class Smartdevices extends StatelessWidget {
  final String smartdevicename;
  final String iconpath;
  final bool status;
  void Function(bool)? OnChanged;

  Smartdevices(
      {super.key,
      required this.smartdevicename,
      required this.iconpath,
      required this.status,
      required this.OnChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              iconpath,
              height: 65,
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    smartdevicename,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )),
                Transform.rotate(
                    angle: pi / 2,
                    child: CupertinoSwitch(value: status, onChanged: OnChanged))
              ],
            )
          ],
        ),
      ),
    );
  }
}
