import 'package:airbnb_scroll_animation/ui/home/views/home_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeView(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        elevation: 3,
        items: [
          BottomNavigationBarItem(
            label: 'Explorar',
            icon: Icon(
              Icons.search_outlined,
              color: Color.fromRGBO(255, 56, 92, 1),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Guardados',
            icon: Icon(
              Icons.favorite_border,
              color: Colors.grey[500],
            ),
          ),
          BottomNavigationBarItem(
            label: 'Viajes',
            icon: Icon(
              Icons.leave_bags_at_home_outlined,
              color: Colors.grey[500],
            ),
          ),
          BottomNavigationBarItem(
            label: 'Mensajes',
            icon: Icon(
              Icons.message_outlined,
              color: Colors.grey[500],
            ),
          ),
          BottomNavigationBarItem(
            label: 'Perfil',
            icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}
