import 'package:flutter/material.dart';

class LocationItem extends StatelessWidget {
  final String image;
  final String title;
  final String text;

  const LocationItem({Key key, this.image, this.title, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            height: 80,
            width: 80,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              text,
            ),
          ],
        )
      ],
    );
  }
}
