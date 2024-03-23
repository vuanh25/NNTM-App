import 'package:application_flutter/common/widgets/texts/product_title_text.dart';
import 'package:application_flutter/route_generator.dart';
import 'package:application_flutter/utils/constants/colors.dart';
import 'package:application_flutter/utils/constants/image_strings.dart';
import 'package:application_flutter/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bài đăng'),
        actions: [
          GestureDetector(
            onTap: () {
              navigator!.pushNamed(RouteGenerator.createPostScreen);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: TColors.primary1, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Đăng bài',
                              style: TextStyle(
                                  color: TColors.black,
                                  fontSize: TSizes.iconSm)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Row(
                children: [
                  ItemCategory(
                    title: 'Tất cả',
                    color: TColors.primary1,
                  ),
                  ItemCategory(
                    title: 'Cá nhân',
                    color: Colors.transparent,
                  ),
                  ItemCategory(
                    title: 'Doanh nghiệp',
                    color: Colors.transparent,
                  ),
                ],
              ),
              const SizedBox(width: 15),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const ItemProducts();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemProducts extends StatelessWidget {
  const ItemProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigator!.pushNamed(RouteGenerator.postDetailScreen);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Container(
          margin: const EdgeInsets.only(top: 23, left: 3, right: 3),
          decoration: BoxDecoration(
            color: TColors.primaryBackground,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:
                          Image.asset(TImages.productImage1, fit: BoxFit.cover),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TProductTitleText(
                            title:
                                'CHDV FULL NT ban công gần đường Tô Hiệu, Tân Phúc, chủ nhà',
                            smallSize: true,
                          ),
                          SizedBox(height: 5),
                          TProductTitleText(
                            title: '25 m2',
                            smallSize: true,
                          ),
                          SizedBox(height: TSizes.spaceBtwSections),
                          Text(
                            '4,4 triệu/tháng',
                            style: TextStyle(
                              color: TColors.error,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: TSizes.spaceBtwItems),
                          Row(
                            children: [
                              Icon(
                                Iconsax.clock,
                                color: TColors.textSecondary,
                                size: TSizes.iconSm,
                              ),
                              TProductTitleText(
                                title: '4 phút trước',
                                smallSize: true,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: TColors.textSecondary,
                                size: TSizes.iconSm,
                              ),
                              TProductTitleText(
                                title: 'TP Hồ Chí Minh',
                                smallSize: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemCategory extends StatelessWidget {
  final String title;
  final Color color;
  const ItemCategory({
    super.key,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: TColors.primary1,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(title),
        ),
      ),
    );
  }
}
