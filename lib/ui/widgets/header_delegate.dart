import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:airbnb_scroll_animation/ui/widgets/coronavirus_message.dart';
import 'package:airbnb_scroll_animation/ui/widgets/explore_button.dart';
import 'package:airbnb_scroll_animation/ui/widgets/search_bar.dart';

class HeaderDelegate implements SliverPersistentHeaderDelegate {
  double _maxExtent = 600;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final double visibleMainHeight = _maxExtent - shrinkOffset;
    final double opacityClamp = (visibleMainHeight / 600).clamp(0.0, 1.0);
    final double calcTopSearchBar = _maxExtent - shrinkOffset - 240;
    final double topSearchBar = math.min(
      100,
      calcTopSearchBar >= 0 ? calcTopSearchBar : 0,
    );
    final double topMessage = math.min(
      0,
      260 - shrinkOffset,
    );
    final int alphaSearchBar =
        shrinkOffset - 300 < 255 ? shrinkOffset.toInt() - 300 : 255;

    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: ((shrinkOffset / 1.5 * -1) + 120),
          left: 0,
          child: Opacity(
            opacity: shrinkOffset < 200 ? 1.0 : opacityClamp,
            child: Container(
              height: _maxExtent - 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: topMessage,
          left: 0,
          child: CoronavirusMessage(),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 270,
            left: 16,
          ),
          height: 200,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Mejor\ncerca',
                style: Theme.of(context).textTheme.headline2.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 16,
              ),
              ExploreButton(),
            ],
          ),
        ),
        Positioned(
            top: topSearchBar,
            child: SearchBar(
              backgroundAlpha: alphaSearchBar < 0 ? 0 : alphaSearchBar,
            )),
      ],
    );
  }

  @override
  double get maxExtent => _maxExtent;

  @override
  double get minExtent => 120;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;

  @override
  PersistentHeaderShowOnScreenConfiguration get showOnScreenConfiguration =>
      null;

  @override
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration get stretchConfiguration => null;

  @override
  TickerProvider get vsync => null;
}
