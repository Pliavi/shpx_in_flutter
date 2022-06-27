import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_shpx/constants/colors.dart';
import 'package:flutter_shpx/constants/fonts.dart';
import 'package:flutter_shpx/widgets/shpx_app_bar.dart';
import 'package:flutter_shpx/widgets/shpx_menu_drawer.dart';

part './partials/_product_showcase.dart';
part './partials/_product_section.dart';
part './partials/_hero_slider.dart';
part './partials/_product_card.dart';
part './partials/_contact_form.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: const SHPXMenuDrawer(),
      appBar: const SHPXAppBar(),
      body: ListView(
        controller: ScrollController(),
        padding: const EdgeInsets.only(
          top: 12,
          bottom: 32,
          right: 32,
          left: 32,
        ),
        shrinkWrap: true,
        children: const [
          _HeroSlider(),
          SizedBox(height: 90),
          _ProductSection(),
          SizedBox(height: 90),
          _ProductShowcase(),
          SizedBox(height: 90),
          _ContactForm(),
        ],
      ),
    );
  }
}
