import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/login_page/widgets/footer_section.dart';
import 'package:peer_app/presentation/whitelabel/config.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

import 'widgets/login_section.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
          SizedBox(
              height: AppPaddings.gigaLarge,
              child:
                  !isKeyboardVisible ? const FooterSectionLogin() : Container())
        ],
      ),
    );
  }
}
