import 'package:application_flutter/common/login_signup/form_divider.dart';
import 'package:application_flutter/common/login_signup/social_buttons.dart';
import 'package:application_flutter/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:application_flutter/utils/constants/sizes.dart';
import 'package:application_flutter/utils/constants/test_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          ///Email
          Row(
            children: [
              Expanded(
                flex: 6,
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: TTexts.email,
                      prefixIcon: Icon(Iconsax.direct)),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields / 2),
              Expanded(
                flex: 2,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(0.0)),
                    onPressed: () {},
                    child: const Text(
                      'Lấy mã',
                    )),
              )
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.importCode,
                prefixIcon: Icon(Iconsax.import_11)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///Password
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///Password
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.confirmPassword,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///Terms&Conditions CheckBox
          const TermsAndConditionsCheckbox(),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  TTexts.createAccount,
                )),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          FormDivider(dividerText: TTexts.orSignInWith.capitalize!),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          const SocialButtons(),
        ],
      ),
    );
  }
}
