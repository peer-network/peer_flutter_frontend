import 'package:flutter/material.dart';
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
    // Determine the text field's line height to estimate initial height.
    final double lineHeight =
        Theme.of(context).textTheme.bodyMedium!.fontSize! *
            1.2; // Approximate line height
    final double initialHeight = lineHeight * 4; // Initial height for 4 lines

    return BaseBottomNavigationBar(
      height: null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                minLines: 1,
                maxLines: 4,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: AppPaddings.tiny,
                      horizontal: AppPaddings.small),
                  hintText: "Type a message",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            if (_isSendButtonVisible)
              IconButton(
                icon: const Icon(Icons.send),
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
