import 'package:flutter/material.dart';
import 'package:peer_app/core/types/create_post_type.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/secondary_button.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class CreatePostBottomNavbar extends StatelessWidget {
  const CreatePostBottomNavbar({
    super.key,
    required this.onTypeChanged,
    required this.activeCreatePostType,
    required this.isPostBeingCreated,
  });

  final CreatePostType activeCreatePostType;
  final Function(CreatePostType) onTypeChanged;
  final ValueNotifier<bool> isPostBeingCreated;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: const EdgeInsets.all(AppPaddings.medium),
        child: ValueListenableBuilder<bool>(
          valueListenable: isPostBeingCreated,
          builder: (context, isBeingCreated, child) {
            return isBeingCreated
                ? const SizedBox.shrink()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...CreatePostType.values.map((type) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPaddings.small),
                          child: SecondaryButton(
                            text: type.name,
                            onPressed: () {
                              onTypeChanged(type);
                            },
                            isFilled: activeCreatePostType != type,
                          ),
                        );
                      }),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
