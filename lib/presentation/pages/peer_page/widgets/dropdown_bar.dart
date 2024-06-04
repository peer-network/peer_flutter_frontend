import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class DropdownBar extends StatefulWidget {
  const DropdownBar({super.key});

  @override
  _DropdownBarState createState() => _DropdownBarState();
}

class _DropdownBarState extends State<DropdownBar> {
  String dropdownValue1 = 'All Time';
  String dropdownValue2 = 'All Posts';
  String dropdownValue3 = 'Newest';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        dropdownButton(dropdownValue1, ['All Time', 'Today', 'This Week'],
            (String value) {
          setState(() {
            dropdownValue1 = value;
          });
        }),
        dropdownButton(
            dropdownValue2, ['All Posts', 'Text Posts', 'Image Posts'],
            (String value) {
          setState(() {
            dropdownValue2 = value;
          });
        }),
        dropdownButton(dropdownValue3, ['Newest', 'Trending', 'Most Liked'],
            (String value) {
          setState(() {
            dropdownValue3 = value;
          });
        })
      ],
    );
  }

  Widget dropdownButton(
      String value, List<String> items, ValueChanged<String> onValueChanged) {
    return Container(
      height: AppDimensions.buttonHeightSmall * 1.25,
      padding: const EdgeInsets.only(
          left: AppPaddings.small + AppPaddings.tiny, right: AppPaddings.small),
      decoration: BoxDecoration(
          borderRadius: AppBorders.defaultRadius,
          border: Border.all(
              width: AppDimensions.dropDownBorderWidth,
              color:
                  Theme.of(context).inputDecorationTheme.outlineBorder!.color)),
      child: DropdownButton<String>(
        value: value,
        icon: Padding(
          padding: const EdgeInsets.only(right: AppPaddings.small),
          child: ImageIcon(IconLibrary.arrowDown.icon,
              size: AppDimensions.iconSizeSmall),
        ),
        iconSize: 24,
        elevation: 16,
        style: Theme.of(context).textTheme.labelSmall,
        underline: Container(
          height: 0,
          color: Colors.transparent,
        ),
        onChanged: (String? newValue) {
          onValueChanged(newValue!);
        },
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
