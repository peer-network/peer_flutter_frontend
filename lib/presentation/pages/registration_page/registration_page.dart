import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/base_page.dart';
import 'package:peer_app/presentation/pages/registration_page/widgets/footer_section.dart';
import 'package:peer_app/presentation/pages/registration_page/widgets/registration_section.dart';
import 'package:peer_app/presentation/whitelabel/config.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return BasePage(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedOpacity(
            // If keyboard is visible, fade out the widget; otherwise, make it fully visible instantly.
            opacity: isKeyboardVisible ? 0.0 : 1.0,
            duration: isKeyboardVisible
                ? const Duration(milliseconds: 500)
                : const Duration(milliseconds: 500),
            child: Image.asset(Config.logo, height: Config.logoHeight),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPaddings.large),
            child: RegisterSection(),
          ),
          !isKeyboardVisible
              ? const SizedBox(
                  height: AppPaddings.extraLarge,
                  child: FooterSectionRegistrieren(),
                )
              : const SizedBox(height: AppPaddings.tiny),
        ],
      ),
    );
  }
}
