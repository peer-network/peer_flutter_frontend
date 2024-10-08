import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class DragHandle extends StatelessWidget {
  final double width;
  const DragHandle({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: width,
        height: AppDimensions.dragHandleHeight,
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.light
              ? LightColors.iconBright
              : DarkColors.iconBright,
          borderRadius: AppBorders.dragHandleRadius,
        ),
        margin: const EdgeInsets.symmetric(vertical: AppPaddings.small),
      ),
      Align(
          alignment: Alignment.center,
          child: Text('Deine Wallet',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.secondary))),
    ]);
  }
}
