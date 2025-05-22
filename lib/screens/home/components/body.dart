import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/home/components/featured_plants.dart';
import 'package:plantapp/screens/home/components/header_with_searchbox.dart';
import 'package:plantapp/screens/home/components/map_button.dart';
import 'package:plantapp/screens/home/components/recomend_plant.dart';
import 'package:plantapp/screens/maps/home_maps.dart';
import 'package:plantapp/screens/maps/maps.dart';

import 'title_with_more_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}


class _BodyState extends State<Body> {
  String? alamatDipilih;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtns(title: "Alamat", press: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePageMap(),
                        ),
                      );
                      if (result != null) {
                        setState(() {
                          var alamatDipilih = result;
                        });
                      }
                    },),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecomendsPlant(),
          TitleWithMoreBtn(title: "Featured Plant", press: () {}),
          FeaturedPlants(),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
