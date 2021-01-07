import 'package:flutter/material.dart';

class CoronavirusMessage extends StatelessWidget {
  const CoronavirusMessage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      padding: EdgeInsets.only(
        left: 16,
        top: 56,
        right: 24,
      ),
      color: Colors.black,
      child: Text(
        'Consulta las últimas novedades sobre las medidas que estamos tomando ante el coronavirus.',
        style: Theme.of(context).textTheme.subtitle2.copyWith(
              color: Colors.white,
              decoration: TextDecoration.underline,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
