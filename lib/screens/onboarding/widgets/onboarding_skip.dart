import 'package:application_flutter/features/authencation/controllers.onboarding/onboarding_controller.dart';
import 'package:application_flutter/utils/constants/sizes.dart';
import 'package:application_flutter/utils/device/device_utility%20.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text(
            'Bỏ qua',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ));
  }
}
