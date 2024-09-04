import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/options_section_widget.dart';

import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/options_section_widget_holder.dart';

class OptionsContent extends StatelessWidget {

  const OptionsContent({Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
            return SingleChildScrollView(
              child: OptionsSectionWidgetHolder(),
            );
          }
        }
