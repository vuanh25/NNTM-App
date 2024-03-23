import 'package:application_flutter/common/widgets/appbar/appbar.dart';
import 'package:application_flutter/common/widgets/products/cart/card_menu_icon.dart';
import 'package:application_flutter/utils/constants/colors.dart';
import 'package:application_flutter/utils/constants/test_string.dart';
import 'package:flutter/material.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TTexts.homeAppbarTitle,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.apply(color: TColors.grey)),
            Text(
              TTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.apply(color: TColors.white),
            ),
          ],
        ),
      ),
      // actions: [
      //   TCartCounterIcon(
      //     iconColor: TColors.white,
      //     onPressed: () {},
      //   )
      // ],
    );
  }
}
