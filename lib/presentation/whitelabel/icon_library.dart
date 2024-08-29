import 'package:flutter/material.dart';

enum IconLibrary {
  gem,
  peerSignet,
  send,
  dislike,
  bookmark,
  download,
  report,
  heartFilled,
  horizontalMenu,
  history,
  logOut,
  shares,
  coupon,
  plus,
  minus,
  home,
  star,
  bell,
  support,
  settings,
  copy,
  share,
  legal,
  play,
  megaphone,
  arrowEast,
  arrowWest,
  arrowDown,
  peer,
  stats_post_performance,
  search,
  profile,
  shop,
  plusBox,
  notifications,
  message,
  comment,
  view,
  heart,
  forward,
  close,
  trash,
  edit,
  diamond,
}

extension IconExtension on IconLibrary {
  AssetImage get icon {
    switch (this) {
      case IconLibrary.diamond:
        return const AssetImage("assets/icons/diamond_post_performance.png");
      case IconLibrary.gem:
        return const AssetImage("assets/icons/gem.png");
      case IconLibrary.peerSignet:
        return const AssetImage("assets/icons/peer_signet.png");
      case IconLibrary.send:
        return const AssetImage("assets/icons/send.png");
      case IconLibrary.diamond:
        return const AssetImage("assets/icons/diamond_post_performance.png");
      case IconLibrary.dislike:
        return const AssetImage("assets/icons/dislike.png");
      case IconLibrary.bookmark:
        return const AssetImage("assets/icons/bookmark.png");
      case IconLibrary.download:
        return const AssetImage("assets/icons/download.png");
      case IconLibrary.report:
        return const AssetImage("assets/icons/report.png");
      case IconLibrary.heartFilled:
        return const AssetImage("assets/icons/heart_filled.png");
      case IconLibrary.arrowDown:
        return const AssetImage("assets/icons/arrow_down.png");
      case IconLibrary.horizontalMenu:
        return const AssetImage("assets/icons/horizontal_menu.png");
      case IconLibrary.history:
        return const AssetImage("assets/icons/history.png");
      case IconLibrary.logOut:
        return const AssetImage("assets/icons/log_out.png");
      case IconLibrary.shares:
        return const AssetImage("assets/icons/shares.png");
      case IconLibrary.coupon:
        return const AssetImage("assets/icons/coupon.png");
      case IconLibrary.plus:
        return const AssetImage("assets/icons/add.png");
      case IconLibrary.minus:
        return const AssetImage("assets/icons/minus.png");
      case IconLibrary.home:
        return const AssetImage("assets/icons/home.png");
      case IconLibrary.star:
        return const AssetImage("assets/icons/star.png");
      case IconLibrary.bell:
        return const AssetImage("assets/icons/bell.png");
      case IconLibrary.support:
        return const AssetImage("assets/icons/support.png");
      case IconLibrary.settings:
        return const AssetImage("assets/icons/settings.png");
      case IconLibrary.copy:
        return const AssetImage("assets/icons/copy.png");
      case IconLibrary.share:
        return const AssetImage("assets/icons/share.png");
      case IconLibrary.legal:
        return const AssetImage("assets/icons/legal.png");
      case IconLibrary.play:
        return const AssetImage("assets/icons/play.png");
      case IconLibrary.megaphone:
        return const AssetImage("assets/icons/megaphone.png");
      case IconLibrary.arrowEast:
        return const AssetImage("assets/icons/arrow_east.png");
      case IconLibrary.arrowWest:
        return const AssetImage("assets/icons/arrow_west.png");
      case IconLibrary.peer:
        return const AssetImage("assets/icons/peer.png");
      case IconLibrary.search:
        return const AssetImage("assets/icons/search.png");
      case IconLibrary.profile:
        return const AssetImage("assets/icons/profile.png");
      case IconLibrary.shop:
        return const AssetImage("assets/icons/shop.png");
      case IconLibrary.plusBox:
        return const AssetImage("assets/icons/plus_box.png");
      case IconLibrary.notifications:
        return const AssetImage("assets/icons/notifications.png");
      case IconLibrary.message:
        return const AssetImage("assets/icons/message.png");
      case IconLibrary.comment:
        return const AssetImage("assets/icons/comment.png");
      case IconLibrary.view:
        return const AssetImage("assets/icons/view.png");
      case IconLibrary.heart:
        return const AssetImage("assets/icons/heart.png");
      case IconLibrary.forward:
        return const AssetImage("assets/icons/forward.png");
      case IconLibrary.close:
        return const AssetImage("assets/icons/close.png");
      case IconLibrary.trash:
        return const AssetImage("assets/icons/trash.png");
      case IconLibrary.edit:
        return const AssetImage("assets/icons/edit.png");
      case IconLibrary.stats_post_performance:
        return const AssetImage("assets/icons/post_performance-stats.png");

      default:
        throw Exception("Icon not found");
    }
  }
}
