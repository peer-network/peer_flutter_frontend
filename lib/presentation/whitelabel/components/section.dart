import 'package:flutter/widgets.dart';
import 'package:peer_app/presentation/whitelabel/components/types/section_types.dart';

class Section extends StatelessWidget {
  final SectionType type;
  final String title;
  final String text;

  const Section(
      {Key? key, required this.title, required this.text, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        Text(text),
      ],
    );
  }
}
