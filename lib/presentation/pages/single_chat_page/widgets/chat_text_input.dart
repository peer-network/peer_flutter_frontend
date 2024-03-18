import 'package:flutter/material.dart';

class ChatTextInput extends StatefulWidget {
  const ChatTextInput({Key? key}) : super(key: key);

  @override
  _ChatTextInputState createState() => _ChatTextInputState();
}

class _ChatTextInputState extends State<ChatTextInput> {
  final TextEditingController _controller = TextEditingController();
  bool _hasText = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _hasText = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color:
            const Color.fromARGB(255, 200, 1, 1), // Adjust the color as needed
        borderRadius: BorderRadius.circular(30.0), // Creates the pill shape
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Type a message...',
                border: InputBorder.none, // Removes underline
              ),
            ),
          ),
          _hasText
              ? IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    // Handle the send action
                    print('Sending: ${_controller.text}');
                    // Optionally, clear the input field after sending
                    _controller.clear();
                  },
                )
              : Container(), // If no text is entered, this remains hidden
        ],
      ),
    );
  }
}
