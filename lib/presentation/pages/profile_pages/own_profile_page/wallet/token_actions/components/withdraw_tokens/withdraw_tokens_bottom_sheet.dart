import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/custom_button.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/config.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:provider/provider.dart';

class WithdrawTokensBottomSheet extends StatefulWidget {
  const WithdrawTokensBottomSheet({super.key});

  @override
  State<WithdrawTokensBottomSheet> createState() =>
      _WithdrawTokensBottomSheetState();
}

class _WithdrawTokensBottomSheetState extends State<WithdrawTokensBottomSheet> {
  final PageController _horizontalTitlePageViewController = PageController();
  final PageController _verticalTitlePageViewController = PageController();
  final PageController _contentPageController = PageController();

  final TextEditingController _cashOutAmountController =
      TextEditingController();
  final FocusNode _cashOutAmountFocusNode = FocusNode();

  final TextEditingController _paypalAddressConttroller =
      TextEditingController();
  final FocusNode _paypalAddressFocusNode = FocusNode();

  bool _isPayPalSelected = false;
  bool _isBankSelected = false;
  bool _enterAmount = true;

  String _bottomSheetTitle = 'Betrag wählen';
  String? _cashOutAmountError;
  String? _paypalAddressError;

  @override
  void initState() {
    super.initState();
    controllerSetup();
  }

  Future controllerSetup() async {
    _cashOutAmountController.addListener(() {
      String text = _cashOutAmountController.text;
      if (!text.endsWith('Tokens')) {
        _cashOutAmountController.text = '$text Tokens';
        _cashOutAmountController.selection = TextSelection.fromPosition(
          TextPosition(offset: _cashOutAmountController.text.length - 7),
        );
      } else if (_cashOutAmountController.selection.start >
          _cashOutAmountController.text.length - 7) {
        _cashOutAmountController.selection = TextSelection.fromPosition(
          TextPosition(offset: _cashOutAmountController.text.length - 7),
        );
      }

      if (text.endsWith('Tokens')) {
        text = text.substring(0, text.length - 7).trim();
      }
      if (text.isNotEmpty && double.tryParse(text) != null) {
        setState(() {
          _cashOutAmountError = null;
        });
      }
    });
    await Future.delayed(const Duration(milliseconds: 200));
    _cashOutAmountFocusNode.requestFocus();

    _paypalAddressConttroller.addListener(() {
      String text = _paypalAddressConttroller.text;
      if (text.isNotEmpty) {
        setState(() {
          _paypalAddressError = null;
        });
      }
    });
  }

  @override
  void dispose() {
    _verticalTitlePageViewController.dispose();
    _horizontalTitlePageViewController.dispose();
    _contentPageController.dispose();
    _cashOutAmountController.dispose();
    _cashOutAmountFocusNode.dispose();
    _paypalAddressConttroller.dispose();
    _paypalAddressFocusNode.dispose();
    super.dispose();
  }

  void _onMaxAmountTapped() {
    final tokenAmount =
        context.read<WalletSheetProvider>().wallet!.totalCredits;
    _cashOutAmountController.text = '$tokenAmount Tokens';
  }

  void _onAmountEnteredCompleted() {
    String text = _cashOutAmountController.text;
    if (text.endsWith('Tokens')) {
      text = text.substring(0, text.length - 7).trim();
    }
    if (text.isEmpty ||
        double.tryParse(text) == null ||
        double.parse(text) <= 0) {
      setState(() {
        _cashOutAmountError = 'Please enter a valid number of tokens';
      });
      return;
    }

    _cashOutAmountFocusNode.unfocus();
    setState(() {
      _enterAmount = false;
    });
    _horizontalTitlePageViewController.animateToPage(1,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    _contentPageController.animateToPage(1,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  void _onEuroTapped() {
    _contentPageController.animateToPage(2,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  void _onPayPalTapped() {
    setState(() {
      _bottomSheetTitle = 'Enter PayPal Email';
      _isPayPalSelected = true;
      _isBankSelected = false;
    });
    _verticalTitlePageViewController.animateToPage(1,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    _paypalAddressFocusNode.requestFocus();
  }

  void _onPayPalAdressEntered() {
    final emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    if (!emailRegex.hasMatch(_paypalAddressConttroller.text) ||
        _paypalAddressConttroller.text.isEmpty) {
      setState(() {
        _paypalAddressError = 'Please enter a valid email address';
      });
      return;
    }
  }

  void _onBankTapped() {
    setState(() {
      _bottomSheetTitle = 'Bank';
      _isPayPalSelected = false;
      _isBankSelected = true;
    });
    _verticalTitlePageViewController.animateToPage(1,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        height: (_enterAmount)
            ? MediaQuery.of(context).size.height * 0.65
            : (_isPayPalSelected || _isBankSelected)
                ? MediaQuery.of(context).size.height * 0.7
                : MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.only(
              topLeft: AppBorders.defaultRadius.topLeft,
              topRight: AppBorders.defaultRadius.topRight,
            )),
        child: Padding(
            padding: const EdgeInsets.only(
                left: AppPaddings.medium,
                right: AppPaddings.medium,
                bottom: AppPaddings.medium),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: PageView(
                        scrollDirection: Axis.vertical,
                        controller: _verticalTitlePageViewController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          PageView(
                            controller: _horizontalTitlePageViewController,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              Text('Enter amount',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!),
                              Text('Select payout method',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!)
                            ],
                          ),
                          Text(_bottomSheetTitle)
                        ])),
                GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Image(
                        width: MediaQuery.of(context).size.width * 0.08,
                        height: MediaQuery.of(context).size.height * 0.08,
                        image: const AssetImage(Config.declineIcon)))
              ]),
              SizedBox(
                height: (_enterAmount)
                    ? MediaQuery.of(context).size.height * 0.3
                    : MediaQuery.of(context).size.height * 0.12,
                child: PageView(
                    controller: _contentPageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // enter amount
                      Column(
                        children: [
                          TextField(
                            style: Theme.of(context).textTheme.headlineSmall!,
                            textAlign: TextAlign.center,
                            controller: _cashOutAmountController,
                            focusNode: _cashOutAmountFocusNode,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: AppBorders.defaultRadius,
                                ),
                                errorText: _cashOutAmountError,
                                prefixIcon: TextButton(
                                    onPressed: _onMaxAmountTapped,
                                    child: Text('MAX',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!)),
                                suffixIcon: IconButton(
                                    onPressed: _onAmountEnteredCompleted,
                                    icon: const Icon(Icons.arrow_forward))),
                            onEditingComplete: _onAmountEnteredCompleted,
                            onSubmitted: (amount) =>
                                _onAmountEnteredCompleted(),
                          ),
                          const SizedBox(height: AppPaddings.small),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Consumer<WalletSheetProvider>(
                              builder: (context, provider, child) {
                                return Padding(
                                    padding: const EdgeInsets.only(
                                        left: AppPaddings.small),
                                    child: Text(
                                        '1 Token = ${provider.wallet!.currencyExchange.creditValue}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!));
                              },
                            ),
                          )
                        ],
                      ),

                      // euro and bitty buttons
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomButton(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.4,
                                onPressed: _onEuroTapped,
                                overrideDefaultColor: true,
                                customBackgroundColor:
                                    Theme.of(context).brightness ==
                                            Brightness.light
                                        ? LightColors.iconSuccess
                                        : DarkColors.iconSuccess,
                                isIcon: true,
                                icon: const Icon(Icons.euro,
                                    color: Colors.white)),
                            CustomButton(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.4,
                              onPressed: () {},
                              overrideDefaultColor: true,
                              customBackgroundColor:
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? LightColors.iconBtc
                                      : DarkColors.iconBtc,
                              hasImage: true,
                              isIcon: false,
                              assetPath: Config.bitcoinIcon,
                            )
                          ]),
                      // paypal and bank buttons
                      Row(
                          mainAxisAlignment:
                              (_isPayPalSelected || _isBankSelected)
                                  ? MainAxisAlignment.center
                                  : MainAxisAlignment.spaceAround,
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 400),
                              height: (_isPayPalSelected)
                                  ? MediaQuery.of(context).size.height * 0.2
                                  : MediaQuery.of(context).size.height * 0.08,
                              width: (_isPayPalSelected)
                                  ? MediaQuery.of(context).size.width * 0.9
                                  : MediaQuery.of(context).size.width * 0.4,
                              child: (_isPayPalSelected)
                                  ? TextField(
                                      controller: _paypalAddressConttroller,
                                      focusNode: _paypalAddressFocusNode,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              AppBorders.defaultRadius,
                                        ),
                                        errorText: _paypalAddressError,
                                        hintText: 'paypal.email@adress.com',
                                        suffixIcon: IconButton(
                                            onPressed: _onPayPalAdressEntered,
                                            icon: const Icon(
                                                Icons.arrow_forward)),
                                      ))
                                  : CustomButton(
                                      onPressed: _onPayPalTapped,
                                      overrideDefaultColor: true,
                                      customBackgroundColor:
                                          Theme.of(context).brightness ==
                                                  Brightness.light
                                              ? LightColors.paypalBackground
                                              : DarkColors.paypalBackground,
                                      isIcon: false,
                                      hasImage: true,
                                      assetPath: Config.paypalIcon),
                            ),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 400),
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: (_isBankSelected)
                                  ? MediaQuery.of(context).size.width * 0.9
                                  : (_isPayPalSelected)
                                      ? 0
                                      : MediaQuery.of(context).size.width * 0.4,
                              child: CustomButton(
                                  onPressed: _onBankTapped,
                                  overrideDefaultColor: true,
                                  customBackgroundColor:
                                      Theme.of(context).brightness ==
                                              Brightness.light
                                          ? LightColors.iconBtc
                                          : DarkColors.iconBtc,
                                  isIcon: true,
                                  icon: const Icon(Icons.balance,
                                      color: Colors.white)),
                            ),
                          ]),
                      // confirm cashout
                      const Column()
                    ]),
              )
            ])));
  }
}
