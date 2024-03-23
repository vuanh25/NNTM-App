import 'package:application_flutter/common/widgets/texts/product_title_text.dart';
import 'package:application_flutter/utils/constants/colors.dart';
import 'package:application_flutter/utils/constants/image_strings.dart';
import 'package:application_flutter/utils/constants/sizes.dart';
import 'package:application_flutter/utils/constants/test_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tạo bài đăng'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TProductTitleText(
                    title: 'Hình ảnh và video sản phẩm',
                    smallSize: false,
                  ),
                  Center(
                    child: Container(
                      height: 270,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(color: TColors.primary1, width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(50),
                        child: Image.asset(TImages.image),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Thêm dự án đất cho thuê',
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Địa chỉ',
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              decoration:
                  BoxDecoration(color: TColors.primary1.withOpacity(0.5)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  DropdownButtonFormField(
                    decoration: const InputDecoration(),
                    items: const [
                      DropdownMenuItem(
                        value: '0',
                        child: Text('Loại hình đất'),
                      ),
                      DropdownMenuItem(
                        value: '1',
                        child: Text('Danh mục 2'),
                      ),
                      DropdownMenuItem(
                        value: '2',
                        child: Text('Danh mục 3'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  DropdownButtonFormField(
                    decoration: const InputDecoration(),
                    items: const [
                      DropdownMenuItem(
                        value: '0',
                        child: Text('Hướng đất'),
                      ),
                      DropdownMenuItem(
                        value: '1',
                        child: Text('Danh mục 2'),
                      ),
                      DropdownMenuItem(
                        value: '2',
                        child: Text('Danh mục 3'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Container(
              height: 50,
              decoration:
                  BoxDecoration(color: TColors.primary1.withOpacity(0.5)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  DropdownButtonFormField(
                    decoration: const InputDecoration(),
                    items: const [
                      DropdownMenuItem(
                        value: '0',
                        child: Text('Giấy tờ pháp lý'),
                      ),
                      DropdownMenuItem(
                        value: '1',
                        child: Text('Danh mục 2'),
                      ),
                      DropdownMenuItem(
                        value: '2',
                        child: Text('Danh mục 3'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Container(
              height: 50,
              decoration:
                  BoxDecoration(color: TColors.primary1.withOpacity(0.5)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Diện tích đât',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      Expanded(
                        flex: 1,
                        child: DropdownButtonFormField(
                          decoration: const InputDecoration(),
                          items: const [
                            DropdownMenuItem(
                              value: '0',
                              child: Text('m2'),
                            ),
                            DropdownMenuItem(
                              value: '1',
                              child: Text('1'),
                            ),
                            DropdownMenuItem(
                              value: '2',
                              child: Text('2'),
                            ),
                          ],
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Chiều ngang',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Chiều dài',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Giá thuê',
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Số tiền cọc',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Container(
              height: 50,
              decoration:
                  BoxDecoration(color: TColors.primary1.withOpacity(0.5)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  TextFormField(
                    maxLength: 70,
                    decoration: const InputDecoration(
                      labelText: 'Tiêu đề tin đăng',
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TextFormField(
                    maxLength: 300,
                    minLines: 1,
                    decoration: const InputDecoration(
                      labelText: 'Mô tả chi tiết',
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Đăng bài'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
