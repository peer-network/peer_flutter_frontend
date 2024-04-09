import 'package:fluttertoast/fluttertoast.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/text_constants.dart';

class CustomToast {
  // show success toast
  static void showSuccessToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: AppDuration.toastDuration,
        backgroundColor: CustomColors.successBorderColor,
        textColor: CustomColors.primaryTextColor,
        fontSize: bodyLargeTextStyle(CustomColors.primaryColor).fontSize);
  }

  // show error toast
  static void showErrorToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: AppDuration.toastDuration,
        backgroundColor: CustomColors.errorBorderColor,
        textColor: CustomColors.primaryTextColor,
        fontSize: bodyLargeTextStyle(CustomColors.primaryColor).fontSize);
  }
}