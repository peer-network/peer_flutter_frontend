import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class TransferTokens extends StatelessWidget {
  const TransferTokens({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppPaddings.large),
        TextButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(CustomColors.lightTextColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)))),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(AppPaddings.small),
              child: Text('Tokens Überweisen',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: CustomColors.tertiaryTextColor)),
            ))
      ],
    );
  }
}
