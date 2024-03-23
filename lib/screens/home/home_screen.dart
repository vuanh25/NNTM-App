import 'package:application_flutter/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:application_flutter/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:application_flutter/common/widgets/layout/grid_layout.dart';
import 'package:application_flutter/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:application_flutter/common/widgets/texts/custom_shapes/containers/primary_header_container.dart';
import 'package:application_flutter/common/widgets/texts/section_heading.dart';
import 'package:application_flutter/screens/home/widgets/home_appbar.dart';
import 'package:application_flutter/screens/home/widgets/home_categories.dart';
import 'package:application_flutter/screens/home/widgets/promo_slider.dart';
import 'package:application_flutter/utils/constants/colors.dart';
import 'package:application_flutter/utils/constants/image_strings.dart';
import 'package:application_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSearchContainer(
                    text: "Tìm bất cứ thứ gì",
                    showBorder: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: "Khám phá danh mục",
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        THomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  TGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const TProductCardVertical())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
