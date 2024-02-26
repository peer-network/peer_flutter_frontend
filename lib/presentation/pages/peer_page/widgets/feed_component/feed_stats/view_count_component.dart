import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class ViewCountComponent extends StatelessWidget {
  const ViewCountComponent({super.key});

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
        Text("12", style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}
