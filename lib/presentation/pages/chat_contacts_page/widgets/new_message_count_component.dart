// import 'package:flutter/material.dart';
// import 'package:peer_app/presentation/whitelabel/colors.dart';
// import 'package:peer_app/presentation/whitelabel/constants.dart';

// class NewMessageCountComponent extends StatelessWidget {
//   const NewMessageCountComponent({
//     super.key,
//     required this.notificationCount,
//   });
//   final int notificationCount;

//   @override
//   Widget build(BuildContext context) {
//     // Determine the text to display based on the notificationCount
//     final String displayText = notificationCount > 99
//         ? "99+" // Currently not working becuase of the fixed size of the container
//         : notificationCount.toString();

//     // Determine the font size based on the length of displayText
//     final double fontSize;
//     if (displayText.length > 2) {
//       // For text length greater than 2 (e.g., "99+")
//       fontSize = Theme.of(context).textTheme.displayLarge!.fontSize!;
//     } else if (displayText.length > 1) {
//       // For text length greater than 1 (e.g., "10" to "99")
//       fontSize = Theme.of(context).textTheme.bodyMedium!.fontSize!;
//     } else {
//       // For text length of 1 (e.g., "0" to "9")
//       fontSize = Theme.of(context).textTheme.bodyLarge!.fontSize!;
//     }

//     return Container(
//       width: AppDimensions.notificationIndicatorCicleSize,
//       height: AppDimensions.notificationIndicatorCicleSize,
//       decoration: BoxDecoration(
//         color: Theme.of(context).brightness == Brightness.light
//             ? LightColors.notificationIndicator
//             : DarkColors.notificationIndicator,
//         shape: BoxShape.circle,
//       ),
//       alignment: Alignment.center,
//       child: Transform.translate(
//         offset: Offset(0, -0.5),
//         child: Text(
//           displayText,
//           style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                 color: Theme.of(context).brightness == Brightness.light
//                     ? LightColors.textBright
//                     : DarkColors.textBright,
//                 fontSize: fontSize,
//               ),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
// }

// File: new_message_count_component.dart
import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class NewMessageCountComponent extends StatelessWidget {
  const NewMessageCountComponent({
    super.key,
    required this.notificationCount,
  });
  final int notificationCount;

  @override
  Widget build(BuildContext context) {
    // Determine the text to display based on the notificationCount
    final String displayText = notificationCount > 99
        ? "99+" // Currently not working because of the fixed size of the container
        : notificationCount.toString();

    // Determine the font size based on the length of displayText
    final double fontSize = _determineFontSize(context, displayText);

    // Initialize text widget
    Widget textWidget = Text(
      displayText,
      style: TextStyle(
        color: Theme.of(context).brightness == Brightness.light
            ? LightColors.textBright
            : DarkColors.textBright,
        fontSize: fontSize,
      ),
      textAlign: TextAlign.center,
    );

    // Conditional Transformation: Apply only if the text is a single digit
    if (displayText.length == 1) {
      textWidget = Transform.translate(
        offset: const Offset(
            0, -2), // Shifts the text up by 2 pixels if single digit
        child: textWidget,
      );
    }

    return Container(
      width: AppDimensions.notificationIndicatorCicleSize,
      height: AppDimensions.notificationIndicatorCicleSize,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? LightColors.notificationIndicator
            : DarkColors.notificationIndicator,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: textWidget, // Use the conditionally adjusted text widget
    );
  }

  // Method to determine the font size based on the length of the displayText
  double _determineFontSize(BuildContext context, String text) {
    if (text.length > 2) {
      // For text length greater than 2 (e.g., "99+")
      return Theme.of(context).textTheme.displayLarge!.fontSize!;
    } else if (text.length > 1) {
      // For text length greater than 1 (e.g., "10" to "99")
      return Theme.of(context).textTheme.bodyMedium!.fontSize!;
    } else {
      // For text length of 1 (e.g., "0" to "9")
      return Theme.of(context).textTheme.bodyLarge!.fontSize!;
    }
  }
}
