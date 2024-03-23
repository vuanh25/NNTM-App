import 'package:application_flutter/screens/home/home_screen.dart';
import 'package:application_flutter/screens/post/post.dart';
import 'package:application_flutter/utils/constants/colors.dart';
import 'package:application_flutter/utils/helpers/helpers_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          backgroundColor: dark ? TColors.black : TColors.white,
          indicatorColor: dark
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Trang chủ"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Bài đăng"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Chat"),
            NavigationDestination(
                icon: Icon(Iconsax.user), label: "Người dùng"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const PostScreen(),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.blue,
    ),
  ];
}
