import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ContactsCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry margin;

  const ContactsCard({
    Key? key,
    required this.child,
    this.margin = const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.zero,
      ),
      child: child,
    );
  }
}
