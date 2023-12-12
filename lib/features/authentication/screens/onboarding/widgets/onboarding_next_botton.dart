import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers.onboarding/onboarding_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
