import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class CasparHeart extends StatelessWidget {
  const CasparHeart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.all(AppPaddings.tiny),
      child: CustomIconButton(
        onPressed: () {},
        sizeType: SizeType.small,
        icon: IconLibrary.heart,
        color: Theme.of(context).brightness == Brightness.light
            ? LightColors.iconCompany
            : DarkColors.iconCompany,
      ),
    );
  }
}


// class FirstLayerComment extends StatelessWidget {
//   const FirstLayerComment({super.key, required this.comments});

//   final List<CommentModel> comments;

//   // Was tut diese widget?
//   // 1. create a Column and use the spreading operator on the comments list.
//   // For each comment that got spreaded, create a Column widget with a list of children.
//   // 2. The children list contains a CommentComment widget (which is a single comment) and a SecondLayerComment widget.
//   // In case the comment has no comments, the SecondLayerComment widget is not shown.

//   @override
//   Widget build(BuildContext context) {
//     // for each comment build a first layer comment
//     return Column(
//         children: comments
//             .map((comment) => Column(
//                   children: [
//                     CommentComment(
//                         comment: comment,
//                         isThirdLayerOrMore: false,
//                         isSecondLayerOrMore: false),
//                     comment.comments.isNotEmpty
//                         ? SecondLayerComment(comments: comment.comments)
//                         : Container(),
//                   ],
//                 ))
//             .toList());
//   }
// }

// class SecondLayerComment extends StatelessWidget {
//   const SecondLayerComment({super.key, required this.comments});

//   final List<CommentModel> comments;

//   // Was tut diese widget?
//   // Everything is the same as in the FirstLayerComment widget,
//   // but it is still needed to later determine the padding of it and it uses the ThirdLayerComment widget.
//   // the boolean isThirdLayerOrMore is still set to false, because there is no refering to other comments.

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         children: comments
//             .map((comment) => Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 38.0),
//                       child: CommentComment(
//                           comment: comment,
//                           isThirdLayerOrMore: false,
//                           isSecondLayerOrMore: true),
//                     ),
//                     comment.comments.isNotEmpty
//                         ? ThirdLayerComment(comments: comment.comments)
//                         : Container(),
//                   ],
//                 ))
//             .toList());
//   }
// }

// class ThirdLayerComment extends StatelessWidget {
//   const ThirdLayerComment({super.key, required this.comments});

//   final List<CommentModel> comments;

//   // Was tut diese widget?
//   // Everything is the same as in the SecondLayerComment widget and
//   // deeper levels also build a ThirdLayerComment widget.
//   // isThirdLayerOrMore is now set to true.
//   // Also a referenceName is passed to the CommentComment widget.
//   // The referenceName is the name of the user of the current comment.

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         children: comments
//             .map((CommentModel comment) => Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 38.0),
//                       child: CommentComment(
//                           comment: comment,
//                           isThirdLayerOrMore: true,
//                           isSecondLayerOrMore: true,
//                           referenceName: comment.creator.name ?? "HERE"),
//                     ),
//                     comment.comments.isNotEmpty
//                         ? ThirdLayerComment(comments: comment.comments)
//                         : Container(),
//                   ],
//                 ))
//             .toList());
//   }
// }

/////////////////////////////////////////////////////////////
// class CommentComment extends StatelessWidget {
//   const CommentComment(
//       {super.key,
//       required this.comment,
//       required this.isThirdLayerOrMore,
//       required this.isSecondLayerOrMore,
//       this.referenceName});

//   final CommentModel comment;
//   final bool isThirdLayerOrMore;
//   final bool isSecondLayerOrMore;
//   final String? referenceName;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.max,
//       children: [
//         UserImage(
//           imageUrl: comment.creator.imageUrl,
//         ),
//         CommentContent(
//           comment: comment,
//           isThirdLayerOrMore: isThirdLayerOrMore,
//           isSecondLayerOrMore: isSecondLayerOrMore,
//           referenceName: referenceName,
//         ),
//         const Spacer(),
//         const CasparHeart()
//       ],
//     );
//   }
// }

// class UserImage extends StatelessWidget {
//   const UserImage({super.key, required this.imageUrl});

//   final String? imageUrl;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(
//         AppPaddings.medium,
//       ),
//       alignment: Alignment.topCenter,
//       child: CircleAvatar(
//         backgroundImage: NetworkImage(imageUrl!),
//         radius: AppDimensions.iconSizeSmall,
//       ),
//     );
//   }
// }

// class CommentContent extends StatelessWidget {
//   const CommentContent(
//       {super.key,
//       required this.comment,
//       required this.isThirdLayerOrMore,
//       required this.isSecondLayerOrMore,
//       this.referenceName});

//   final CommentModel comment;
//   final bool isThirdLayerOrMore;
//   final bool isSecondLayerOrMore;
//   final String? referenceName;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: RichText(
//         text: TextSpan(
//           children: <TextSpan>[
//             // make clickable

//             TextSpan(
//               text: isThirdLayerOrMore ? '@$referenceName ' : "",
//               style: const TextStyle(fontWeight: FontWeight.bold).copyWith(
//                 color: Theme.of(context).brightness == Brightness.light
//                     ? LightColors.textCompany
//                     : DarkColors.textCompany,
//               ),
//               recognizer: TapGestureRecognizer()
//                 ..onTap = () {
//                   CustomToast.showSuccessToast("jump to post");
//                   // navigate to the profile page
//                 },
//             ),
//             TextSpan(
//               text: comment.content,
//               style: Theme.of(context).textTheme.titleMedium!.copyWith(
//                   color: Theme.of(context).brightness == Brightness.light
//                       ? LightColors.textPrimary
//                       : DarkColors.textPrimary),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CasparHeart extends StatelessWidget {
//   const CasparHeart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.amber,
//       alignment: Alignment.centerRight,
//       padding: const EdgeInsets.all(8.0),
//       child: CustomIconButton(
//         onPressed: () {},
//         sizeType: SizeType.small,
//         icon: IconLibrary.heart,
//         color: Theme.of(context).brightness == Brightness.light
//             ? LightColors.iconCompany
//             : DarkColors.iconCompany,
//       ),
//     );
//   }
// }