import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/registration_page/widgets/footer_section.dart';
import 'package:peer_app/presentation/whitelabel/config.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

import 'widgets/registration_section.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return BasePage(
      makeScrollable: false,
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Logo
                Image.asset(Config.logo, height: Config.logoHeight),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPaddings.large),
                  child: LoginSection(),
                ),

                //FooterSection
              ],
            ),
          ),
          !isKeyboardVisible ?  const SizedBox(
            height: AppPaddings.extraLarge,
            child: FooterSectionRegistrieren(),
          ) : const SizedBox(height: AppPaddings.tiny),
        ],
      ),
    );
  }
}
