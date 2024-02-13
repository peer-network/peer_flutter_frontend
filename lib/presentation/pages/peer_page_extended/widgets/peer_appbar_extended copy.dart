import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/logo_appbar.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class PeerAppbarExtended extends StatelessWidget
    implements PreferredSizeWidget {
  const PeerAppbarExtended({super.key})
      : preferredSize = const Size.fromHeight(kToolbarExtenedHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogoAppbar(
          actions: [
            IconButton(
              icon: ImageIcon(
                IconLibrary.message.icon,
                size: AppDimensions.iconSizeLarge,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: ImageIcon(
                IconLibrary.notifications.icon,
                size: AppDimensions.iconSizeLarge,
              ),
              onPressed: () {},
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: AppPaddings.small,
                      vertical: AppPaddings.tiny,
                    ),
                    child: SizedBox(
                      width: 113,
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Suchen ...',
                          suffixIcon: const Icon(Icons
                              .search),
                          border: OutlineInputBorder(
                            borderRadius: AppBorders
                                .defaultRadius,
                            borderSide:
                                BorderSide(color: Colors.blue),
                          ),
                          filled:
                              true, // Fill the input field with a color to emphasize the rounded corners
                          fillColor: Colors.grey[
                              200], // Light grey color for the fill, adjust as needed
                          contentPadding: const EdgeInsets.fromLTRB(
                              20.0,
                              0.0,
                              20.0,
                              0.0), // Adjust padding to center the text and icon
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: AppPaddings.small,
                      vertical: AppPaddings.tiny,
                    ),
                    child: SizedBox(
                      width: 113,
                      height: 30,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          hintText:
                              'Alle Posts', // Displayed when no item is selected
                          filled:
                              true, // Fill the input field with a color to emphasize the rounded corners
                          fillColor: Colors.grey[
                              200], // Light grey color for the fill, adjust as needed
                          contentPadding: const EdgeInsets.fromLTRB(
                              20.0, 0.0, 10.0, 0.0), // Adjust padding
                          border: OutlineInputBorder(
                            borderRadius: AppBorders
                                .defaultRadius, // Rounded corners to create a pill shape
                            borderSide:
                                BorderSide(color: Colors.blue), // Blue border
                          ),
                          // suffixIcon: const Icon(Icons
                          //     .arrow_drop_down), // Dropdown icon on the right side
                        ),
                        items: const <DropdownMenuItem<String>>[
                          DropdownMenuItem<String>(
                            value: '1',
                            child: Text('Option 1'),
                          ),
                          DropdownMenuItem<String>(
                            value: '2',
                            child: Text('Option 2'),
                          ),
                          // Add more items as needed
                        ],
                        onChanged: (value) {
                          // Handle the change
                        },
                        icon: const Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: AppPaddings.small,
                      vertical: AppPaddings.tiny,
                    ),
                    child: SizedBox(
                      width: 113,
                      height: 30,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          hintText:
                              'Neuste', // Displayed when no item is selected
                          filled:
                              true, // Fill the input field with a color to emphasize the rounded corners
                          fillColor: Colors.grey[
                              200], // Light grey color for the fill, adjust as needed
                          contentPadding: const EdgeInsets.fromLTRB(
                              20.0, 0.0, 10.0, 0.0), // Adjust padding
                          border: OutlineInputBorder(
                            borderRadius: AppBorders
                                .defaultRadius, // Rounded corners to create a pill shape
                            borderSide:
                                BorderSide(color: Colors.blue), // Blue border
                          ),
                          // suffixIcon: const Icon(Icons
                          //     .arrow_drop_down), // Dropdown icon on the right side
                        ),
                        items: const <DropdownMenuItem<String>>[
                          DropdownMenuItem<String>(
                            value: '1',
                            child: Text('Option 1'),
                          ),
                          DropdownMenuItem<String>(
                            value: '2',
                            child: Text('Option 2'),
                          ),
                          // Add more items as needed
                        ],
                        onChanged: (value) {
                          // Handle the change
                        },
                        icon: const Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
