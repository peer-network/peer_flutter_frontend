// secondary_button.dart

import 'package:peer_app/presentation/whitelabel/components/buttons/base_button.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SecondaryButton extends BaseButton {
  const SecondaryButton({
    super.key,
    required super.text,
    required super.onPressed,
    super.textColor,
    super.isFilled,
    super.isDisabled,
    super.isLoading,
    super.backgroundColor,
  }) : super(
          height: AppDimensions.buttonHeightSmall, // Always filled for secondary button
        );
}
