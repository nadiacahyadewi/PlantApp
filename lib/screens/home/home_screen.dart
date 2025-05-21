import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
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

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding, 
        ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.home), 
            iconSize: 35, 
            onPressed: () {}
          ),
          IconButton(
            icon: Icon(Icons.camera), 
            iconSize: 35, 
            onPressed: () {}
          ),
          IconButton(
            icon: Icon(Icons.pin_drop), 
            iconSize: 35, 
            onPressed: () {}
          ),
          IconButton(
            icon: Icon(Icons.person), 
            iconSize: 35, 
            onPressed: () {}
          ),
          
        ],
      ),
    );
  }
}
