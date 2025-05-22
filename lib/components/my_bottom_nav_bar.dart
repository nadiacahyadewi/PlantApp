import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/camera/home_camera.dart';
import 'package:plantapp/screens/maps/home_maps.dart';
import 'package:plantapp/screens/maps/maps.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

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
          IconButton(icon: Icon(Icons.home), iconSize: 35, onPressed: () {}),
          IconButton(
            icon: Icon(Icons.camera),
            iconSize: 35,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.pin_drop),
            iconSize: 35,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePageMap()),
              );
            },
          ),
          IconButton(icon: Icon(Icons.person), iconSize: 35, onPressed: () {
            
          }),
        ],
      ),
    );
  }
}
