import 'package:application_flutter/common/login_signup/form_divider.dart';
import 'package:application_flutter/common/login_signup/social_buttons.dart';
import 'package:application_flutter/common/styles/spacing_styles.dart';
import 'package:application_flutter/screens/login/widgets/login_form.dart';
import 'package:application_flutter/screens/login/widgets/login_header.dart';
import 'package:application_flutter/utils/constants/sizes.dart';
import 'package:application_flutter/utils/constants/test_string.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(dark: false),
              LoginForm(),
              FormDivider(dividerText: TTexts.orSignUpWith),
              SizedBox(height: TSizes.spaceBtwSections),
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
