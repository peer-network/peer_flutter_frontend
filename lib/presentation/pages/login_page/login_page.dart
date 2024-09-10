import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/base_page.dart';
import 'package:peer_app/presentation/pages/login_page/widgets/footer_section.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

import 'widgets/login_section.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return BasePage(
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Logo
                Image.asset(IconLibrary.peer.icon.assetName),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPaddings.large),
                  child: LoginSection(),
                ),

                //FooterSection
              ],
            ),
          ),
          SizedBox(
              height: AppDimensions.footerHeight,
              child:
                  !isKeyboardVisible ? const FooterSectionLogin() : Container())
        ],
      ),
    );
  }
}
