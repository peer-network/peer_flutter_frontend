import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SourceBar extends StatelessWidget {
  final String label;
  final int amount;
  final double width;

  const SourceBar({
    Key? key,
    required this.label,
    required this.amount,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
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
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
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
