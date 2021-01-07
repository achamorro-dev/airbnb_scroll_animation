import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final int backgroundAlpha;

  const SearchBar({Key key, this.backgroundAlpha = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 132,
      decoration: BoxDecoration(
        color: Color.fromARGB(backgroundAlpha, 255, 255, 255),
      ),
      child: Center(
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(
            left: 16,
            top: 32,
            bottom: 16,
            right: 16,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                color: Color.fromRGBO(255, 56, 92, 1),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '¿A dónde vas a viajar?',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
