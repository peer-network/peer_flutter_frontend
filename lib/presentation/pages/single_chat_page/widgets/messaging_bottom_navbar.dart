import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/input/input_field_component.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/base_bottom_navbar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  final TextEditingController _controller = TextEditingController();
  bool _isSendButtonVisible = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _isSendButtonVisible = _controller.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseBottomNavigationBar(
      height: null,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPaddings.small, vertical: AppPaddings.tiny),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InputFieldComponent(
                controller: _controller,
                minLines: 1,
                maxLines: 4,
                hintText: "Type a message",
              ),
            ),
            if (_isSendButtonVisible)
              IconButton(
                icon: Icon(Icons.send, color: Theme.of(context).primaryColor),
                onPressed: () {
                  // Implement your send functionality here
                  print("Sending: ${_controller.text}");
                },
              ),
          ],
        ),
      ),
    );
  }
}
