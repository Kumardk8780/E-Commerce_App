import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/common/styles/widgets.login_signup/form_divider.dart';
import 'package:t_store/common/styles/widgets.login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import 'widgets/login_header.dart';

class LoginScren extends StatelessWidget {
  const LoginScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo , title, & sub-title
              const TLoginHeader(),

              //form
              const TLoginForm(),

              //Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
