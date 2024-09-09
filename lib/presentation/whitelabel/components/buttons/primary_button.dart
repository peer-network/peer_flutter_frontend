import 'package:peer_app/presentation/whitelabel/components/buttons/base_button.dart';

class PrimaryButton extends BaseButton {
  const PrimaryButton({
    super.key,
    required super.text,
    required super.onPressed,
    super.backgroundColor,
    super.textColor,
    super.textStyle,
    super.height,
    super.isDisabled,
    super.isLoading,
    super.isFilled,
  });
}
