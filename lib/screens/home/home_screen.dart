import 'package:flutter/material.dart';
import 'package:plantapp/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color.fromRGBO(12, 152, 105, 1), // warna AppBar
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.white), // warna ikon
        onPressed: () {},
      ),
    );
  }
}
