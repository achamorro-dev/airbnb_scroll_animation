import 'package:flutter/material.dart';

class ExploreButton extends StatelessWidget {
  const ExploreButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        'Descubre alojamientos cercanos',
        style: Theme.of(context).textTheme.button.copyWith(
              color: Colors.black,
              fontSize: 14,
            ),
      ),
    );
  }
}
