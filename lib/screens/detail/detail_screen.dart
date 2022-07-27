import 'package:flutter/material.dart';
import 'package:meditaion_app_ui/screens/home/components/bottom_nav_bar.dart';

import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}
