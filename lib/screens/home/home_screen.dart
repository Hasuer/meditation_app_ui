import 'package:flutter/material.dart';
import 'package:meditaion_app_ui/size_config.dart';

import 'components/body.dart';
import 'components/bottom_nav_bar.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}
