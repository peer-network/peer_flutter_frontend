import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class ViewCountComponent extends StatelessWidget {
  const ViewCountComponent({super.key, this.isSmallText = false});
  final bool isSmallText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          onPressed: () {},
          sizeType: SizeType.small,
          icon: IconLibrary.view,
        ),
        const SizedBox(width: AppPaddings.small),
        Text("12",
            style: isSmallText
                ? Theme.of(context).textTheme.bodyLarge
                : Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}
