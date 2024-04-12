import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/custom_button.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/config.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:provider/provider.dart';

class CashOutTokensBottomSheet extends StatefulWidget {
  const CashOutTokensBottomSheet({super.key});

  @override
  State<CashOutTokensBottomSheet> createState() =>
      _CashOutTokensBottomSheetState();
}

class _CashOutTokensBottomSheetState extends State<CashOutTokensBottomSheet> {
  final PageController _horizontalTitlePageViewController = PageController();
  final PageController _verticalTitlePageViewController = PageController();
  final PageController _contentPageController = PageController();

  final TextEditingController _cashOutAmountController =
      TextEditingController();
  final FocusNode _cashOutAmountFocusNode = FocusNode();

  bool _isPayPalSelected = false;
  bool _isBankSelected = false;
  bool _enterAmount = true;

  String _bottomSheetTitle = 'Betrag wählen';
  String? _cashOutAmountError;

  @override
  void initState() {
    super.initState();
    awaitFocus();
  }

  Future awaitFocus() async {
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
  }

  @override
  void dispose() {
    _verticalTitlePageViewController.dispose();
    _horizontalTitlePageViewController.dispose();
    _contentPageController.dispose();
    _cashOutAmountController.dispose();
    _cashOutAmountFocusNode.dispose();
    super.dispose();
  }

  void _onMaxAmountTapped() {
    final tokenAmount = context.read<WalletSheetProvider>().wallet.totalCredits;
    _cashOutAmountController.text = '$tokenAmount Tokens';
  }

  void _onAmountEnteredCompleted() {
    String text = _cashOutAmountController.text;
    if (text.endsWith('Tokens')) {
      text = text.substring(0, text.length - 7).trim();
    }
    if (text.isEmpty || double.tryParse(text) == null) {
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
      _bottomSheetTitle = 'PayPal';
      _isPayPalSelected = true;
      _isBankSelected = false;
    });
    _verticalTitlePageViewController.animateToPage(1,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
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
                ? MediaQuery.of(context).size.height * 0.4
                : MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
            color: CustomColors.lightTextColor,
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
                        controller: _verticalTitlePageViewController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          PageView(
                            controller: _horizontalTitlePageViewController,
                            physics: const NeverScrollableScrollPhysics(),
                            children: const [
                              Text('Enter amount'),
                              Text('Select payout method')
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
                                    child: const Text('MAX')),
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
                                        '1 Token = ${provider.currencyExchange.creditValue}'));
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
                                color: Colors.green,
                                isIcon: true,
                                icon: const Icon(Icons.euro,
                                    color: Colors.white)),
                            CustomButton(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.4,
                              onPressed: () {},
                              color: CustomColors.bitcoinColor,
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
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: (_isPayPalSelected)
                                  ? MediaQuery.of(context).size.width * 0.9
                                  : (_isBankSelected)
                                      ? 0
                                      : MediaQuery.of(context).size.width * 0.4,
                              child: CustomButton(
                                  onPressed: _onPayPalTapped,
                                  color: CustomColors.tertiaryTextColor,
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
                                  color: Colors.lime,
                                  isIcon: true,
                                  icon: const Icon(Icons.balance,
                                      color: Colors.white)),
                            ),
                          ]),
                    ]),
              )
            ])));
  }
}

/* 
Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text('Token auszahlen'),
                GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Image(
                        width: MediaQuery.of(context).size.width * 0.08,
                        height: MediaQuery.of(context).size.height * 0.08,
                        image: const AssetImage(Config.declineIcon)))
              ]),
              const SizedBox(height: AppPaddings.small),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                CustomButton(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.4,
                    onPressed: () {},
                    color: Colors.green,
                    isIcon: true,
                    icon: const Icon(Icons.euro, color: Colors.white)),
                CustomButton(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.4,
                    onPressed: () {},
                    color: Colors.orange,
                    isIcon: true,
                    icon: const Icon(Icons.biotech, color: Colors.white)),
              ])
            ],
          ),
*/

/*
TextField(
                restorationId: 'recipient_address',
                minLines: 1,
                maxLines: null,
                controller: _recipientAdressConttroller,
                decoration: InputDecoration(
                  hintText: 'Empfängeradresse eingeben',
                  suffixIcon: IconButton(
                      onPressed: () async {
                        ClipboardData? clipboardData =
                            await Clipboard.getData('text/plain');
                        if (clipboardData != null) {
                          _recipientAdressConttroller.text =
                              clipboardData.text ?? '';
                        }
                      },
                      icon: const Icon(Icons.paste)),
                  border: OutlineInputBorder(
                    borderRadius: AppBorders.defaultRadius,
                  ),
                ),
              ),*/