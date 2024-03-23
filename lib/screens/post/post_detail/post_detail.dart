import 'package:application_flutter/common/widgets/texts/product_title_text.dart';
import 'package:application_flutter/utils/constants/colors.dart';
import 'package:application_flutter/utils/constants/image_strings.dart';
import 'package:application_flutter/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Chi tiết bài đăng'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(TImages.productImage1, fit: BoxFit.cover),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  TProductTitleText(
                    title:
                        'CHDV FULL NT ban công gần đường Tô Hiệu, Tân Phúc, chủ nhà',
                    smallSize: false,
                  ),
                  Row(
                    children: [
                      Text('30 triệu/tháng',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: TColors.primary1,
                              fontSize: TSizes.sm * 1.5)),
                      SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      Text(
                        '30m2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: TSizes.sm * 1.5),
                      ),
                      SizedBox(
                        width: TSizes.spaceBtwSections * 2.5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.share,
                            size: TSizes.iconSm,
                            color: TColors.primary1,
                          ),
                          Text('Chia sẻ',
                              style: TextStyle(fontSize: TSizes.sm)),
                        ],
                      ),
                      SizedBox(
                        width: TSizes.spaceBtwItems / 2,
                      ),
                      Row(
                        children: [
                          Icon(
                            Iconsax.save_21,
                            size: TSizes.iconSm,
                            color: TColors.primary1,
                          ),
                          Text('Lưu bài',
                              style: TextStyle(fontSize: TSizes.sm)),
                        ],
                      ),
                      SizedBox(
                        width: TSizes.spaceBtwItems / 2,
                      ),
                      Row(
                        children: [
                          Icon(
                            Iconsax.message,
                            size: TSizes.iconSm,
                            color: TColors.primary1,
                          ),
                          Text('Nhắn tin',
                              style: TextStyle(fontSize: TSizes.sm)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(
                    Iconsax.map,
                    size: TSizes.iconMd,
                    color: TColors.primary1,
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems / 2,
                  ),
                  Expanded(
                    child: TProductTitleText(
                      title:
                          'Đường Nguyễn Thị Tư, Phường Phú Hữu (Quạn 9 cũ), Thành phố Thủ Đức, TP Hồ CHí Minh',
                      smallSize: true,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(
                    Iconsax.clock,
                    size: TSizes.iconMd,
                    color: TColors.primary1,
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems / 2,
                  ),
                  Expanded(
                    child: TProductTitleText(
                      title: 'Đã đăng 4 giờ trước',
                      smallSize: true,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(
                    Iconsax.security_safe,
                    size: TSizes.iconMd,
                    color: TColors.primary1,
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems / 2,
                  ),
                  Expanded(
                    child: TProductTitleText(
                      title: 'Tin đã được kiểm duyệt.',
                      smallSize: true,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 5,
              color: TColors.borderPrimary,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Đặc điểm bất động sản',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: TColors.textPrimary,
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(
                    Iconsax.map_1,
                    size: TSizes.iconMd,
                    color: TColors.primary1,
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems / 2,
                  ),
                  Expanded(
                    child: TProductTitleText(
                      title: 'Diện tích đất: 1500 m2',
                      smallSize: true,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(
                    Iconsax.edit_2,
                    size: TSizes.iconMd,
                    color: TColors.primary1,
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems / 2,
                  ),
                  Expanded(
                    child: TProductTitleText(
                      title: 'Giấy tờ phát lý: Đã có sổ',
                      smallSize: true,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(
                    Iconsax.category_2,
                    size: TSizes.iconMd,
                    color: TColors.primary1,
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems / 2,
                  ),
                  Expanded(
                    child: TProductTitleText(
                      title: 'Loại hình đất: Đất nền dự án',
                      smallSize: true,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 5,
              color: TColors.borderPrimary,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Mô tả chi tiết',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: TColors.textPrimary,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TProductTitleText(
                      title:
                          'Cho thuê khu đất đường Nguyễn Thị Tư Gần cảng Phú Hữu quận 9',
                      smallSize: true,
                    ),
                    TProductTitleText(
                      title:
                          'Diện tích: 14.000m2 Cạnh đất có bãi chứ thùng cont rỗng đang hoạt động',
                      smallSize: true,
                    ),
                    TProductTitleText(
                      title: 'Giá thuê 20k/m2',
                      smallSize: true,
                    ),
                    TProductTitleText(
                      title: 'Hợp đồng lâu 5-10 năm',
                      smallSize: true,
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
