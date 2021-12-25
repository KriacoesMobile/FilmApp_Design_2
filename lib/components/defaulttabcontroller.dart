import 'package:flutter/material.dart';

class $DefaultTabController extends StatelessWidget {
  const $DefaultTabController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: TabBar(
        isScrollable: true,
        labelPadding: EdgeInsets.symmetric(horizontal: 30),
        tabs: [
          Tab(
            text: 'In Theatre',
          ),
          Tab(
            text: 'Box Office',
          ),
          Tab(
            text: 'Comming Soon',
          )
        ],
        indicatorColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }
}
