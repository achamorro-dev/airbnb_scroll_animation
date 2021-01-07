import 'package:airbnb_scroll_animation/ui/widgets/location_item.dart';
import 'package:flutter/material.dart';

class LocationList extends StatelessWidget {
  const LocationList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
          child: Column(
            children: [
              LocationItem(
                image: 'assets/sevilla.jpg',
                title: 'Sevilla',
                text: '6 horas en coche',
              ),
              SizedBox(height: 16),
              LocationItem(
                image: 'assets/alicante.png',
                title: 'Alicante',
                text: '5 horas en coche',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
          child: Column(
            children: [
              LocationItem(
                image: 'assets/torrevieja.jpg',
                title: 'Torrevieja',
                text: '5.5 horas en coche',
              ),
              SizedBox(height: 16),
              LocationItem(
                image: 'assets/ronda.webp',
                title: 'Ronda',
                text: '6 horas en coche',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
