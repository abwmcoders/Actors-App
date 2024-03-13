import 'package:flutter/material.dart';

import '../model/real_model.dart';
import 'home_widgets.dart';

class HomeFieldRenderer extends StatefulWidget {
  const HomeFieldRenderer({super.key});

  @override
  State<HomeFieldRenderer> createState() => _HomeFieldRendererState();
}

class _HomeFieldRendererState extends State<HomeFieldRenderer> {
  late PageController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: realsList.length,
      scrollDirection: Axis.vertical,
      padEnds: false,
      onPageChanged: (page) {
        setState(() {});
      },
      itemBuilder: (context, index) {
        return RealsWidget(realsList: realsList,);
      },
    );
  }
}
