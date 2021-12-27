import 'package:flutter/material.dart';

class KDefaultTabController extends StatelessWidget {
  const KDefaultTabController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Align(
        alignment: Alignment.center,
        child: TabBar(
          isScrollable: true,
          labelPadding: EdgeInsets.symmetric(horizontal: 20),
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
      ),
    );
  }
}
