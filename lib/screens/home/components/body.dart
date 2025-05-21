import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/home/components/Featured_plants.dart';
import 'package:plantapp/screens/home/components/header_with_searchbox.dart';
import 'package:plantapp/screens/home/components/recomend_plant.dart';

import 'header_with_searchbox.dart';
import 'title_with_more_button.dart';
import 'recomend_plant.dart';
import 'Featured_plants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecomendsPlant(),
          TitleWithMoreBtn(title: "Featured Plant", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

