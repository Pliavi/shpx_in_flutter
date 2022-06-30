import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_shpx/constants/colors.dart';
import 'package:flutter_shpx/constants/fonts.dart';
import 'package:flutter_shpx/models/mock/show_case_slide.dart';
import 'package:flutter_shpx/models/show_case_slide.dart';
import 'package:flutter_shpx/widgets/shpx_app_bar.dart';
import 'package:flutter_shpx/widgets/shpx_menu_drawer.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

part './partials/_product_showcase.dart';
part './partials/_product_section.dart';
part './partials/_hero_slider.dart';
part './partials/_product_card.dart';
part './partials/_contact_form.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWiderScreen = screenWidth > 1280;
    final listPaddingSize = isWiderScreen ? (screenWidth - 1280) / 2 : 32.0;

    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: const SHPXMenuDrawer(),
      appBar: const SHPXAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 12,
          bottom: 32,
          right: listPaddingSize,
          left: listPaddingSize,
        ),
        controller: ScrollController(),
        child: Column(
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
      ),
    );
  }
}
