import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SourceBar extends StatelessWidget {
  final String label;
  final int amount;
  final double width;

  const SourceBar({
    super.key,
    required this.label,
    required this.amount,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: AppPaddings.small + AppPaddings.tiny),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(label,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.secondary))),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
              height: AppDimensions.buttonHeightSmall,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.secondary.withOpacity(0.2)
                  ],
                ),
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.only(
                    topRight: AppBorders.creditsSourceBarRadius.topRight,
                    bottomRight: AppBorders.creditsSourceBarRadius.bottomRight),
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                    padding: const EdgeInsets.only(right: AppPaddings.small),
                    child: Text(amount.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color:
                                    Theme.of(context).colorScheme.secondary))),
              )),
        ),
      ],
    );
  }
}
