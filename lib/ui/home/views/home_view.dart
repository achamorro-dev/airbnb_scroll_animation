import 'package:airbnb_scroll_animation/ui/widgets/header_delegate.dart';
import 'package:airbnb_scroll_animation/ui/widgets/location_list.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        SliverPersistentHeader(
          delegate: HeaderDelegate(),
          pinned: true,
        ),
        SliverFillRemaining(
          child: LocationList(),
          // child: Text('Holi'),
        ),
      ],
    );
  }
}
