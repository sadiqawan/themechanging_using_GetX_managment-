import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/them_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  themeController themeContoller = Get.put(themeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Change the Theem'),
            Obx(
              () => Switch(
                  value: themeContoller.theme.value,
                  onChanged: (value) {
                    themeContoller.theme(value);
                    if (themeContoller.theme.value) {
                      Get.changeTheme(ThemeData.dark());
                    } else {
                      Get.changeTheme(ThemeData.light());
                    }
                  }),
            )
          ],
        )
      ],
    );
  }
}
