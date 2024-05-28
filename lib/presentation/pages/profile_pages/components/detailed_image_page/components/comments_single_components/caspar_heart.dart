import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class CasparHeart extends StatelessWidget {
  const CasparHeart({super.key, this.isLiked});

  final bool? isLiked;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.all(AppPaddings.tiny),
      child: CustomIconButton(
        onPressed: () {},
        sizeType: SizeType.small,
        icon: isLiked! ? IconLibrary.star : IconLibrary.heart,
        color: Theme.of(context).brightness == Brightness.light
            ? LightColors.iconCompany
            : DarkColors.iconCompany,
      ),
    );
  }
}
