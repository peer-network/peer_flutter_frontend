import 'package:flutter/material.dart';
import 'package:peer_app/presentation/modals/base_modal.dart';

class RedeemModal extends StatelessWidget {
  const RedeemModal({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseModal(
      title: 'Gutschein einlösen',
      children: [
        Text('Redeem your voucher here'),
      ],
    );
  }
}
