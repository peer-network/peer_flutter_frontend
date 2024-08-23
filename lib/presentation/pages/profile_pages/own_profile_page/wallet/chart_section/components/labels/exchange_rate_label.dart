import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ExchangeRateLabel extends StatelessWidget {
  final String labelText;
  const ExchangeRateLabel({Key? key, required this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
        padding: const EdgeInsets.only(left: AppPaddings.large),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
                height: height * 0.05,
                padding:
                    const EdgeInsets.symmetric(horizontal: AppPaddings.small),
                decoration: BoxDecoration(
                    borderRadius: AppBorders.exchangeRateLabelRadius,
                    border: Border.all(
                        width: AppDimensions.exchangeRateLabelBorderWith,
                        color: Theme.of(context).colorScheme.secondary)),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPaddings.small),
                    child: Text(labelText,
                        style: Theme.of(context).textTheme.titleSmall!),
                  ),
                ))));
  }
}
