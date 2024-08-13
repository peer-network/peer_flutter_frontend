import 'package:flutter/material.dart';

import 'package:carousel_slider_plus/carousel_slider_plus.dart';
//import 'package:carousel_slider/carousel_slider.dart';


import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/custom_cached_network_image.dart';

class FeedContentImageWidget extends StatefulWidget {
  final ImagePost imagePost;
  final ValueNotifier<double> currentIndex;
  const FeedContentImageWidget(
      {super.key, required this.imagePost, required this.currentIndex});

  @override
  State<FeedContentImageWidget> createState() => _FeedContentImageWidgetState();
}

class _FeedContentImageWidgetState extends State<FeedContentImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'post-${widget.imagePost.media[widget.currentIndex.value.toInt()]}',
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            DetailedPostPageRoute(
              widget.imagePost,
            ),
          );
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.width,
          child: CarouselSlider(
            items: widget.imagePost.media.map((url) {
              return CustomCachedNetworkImage(
                  imageUrl: url, width: double.infinity);
            }).toList(),
            options: CarouselOptions(
              enableInfiniteScroll: false,
              height: double.infinity,
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                setState(() {
                  widget.currentIndex.value = index.toDouble();
                });
              },
              onScrolled: (position) {
                setState(() {
                  widget.currentIndex.value = position!;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}