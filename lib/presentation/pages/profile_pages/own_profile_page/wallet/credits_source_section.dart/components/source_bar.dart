import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';

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
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: CustomColors.lightTextColor))),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
              width: width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 255, 255, 255),
                    Color.fromARGB(100, 255, 255, 255),
                  ],
                ),
                borderRadius: BorderRadius.only(
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
                          .copyWith(color: CustomColors.lightTextColor)),
                ),
              )),
        ),
      ],
    );
  }
}
