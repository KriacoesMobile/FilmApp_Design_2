import 'dart:ui';

import 'package:film_page_design/constant/constant.dart';
import 'package:flutter/material.dart';

class Wallpaper extends StatefulWidget {
  final String heroId, imageUrl;
  const Wallpaper({Key? key, required this.heroId, required this.imageUrl})
      : super(key: key);

  @override
  _WallpaperState createState() => _WallpaperState();
}

class _WallpaperState extends State<Wallpaper> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildContainer1(size),
          buildContainer2(size, context),
        ],
      ),
    );
  }

  Container buildContainer2(Size size, BuildContext context) {
    return Container(
      height: size.height * .4,
      width: size.width,
      child: Column(
        children: [
          buildListTile(size, context),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildTabBar(),
              const SizedBox(width: 5),
              buildText(size, context),
            ],
          ),
          buildBottomContainer(size, context)
        ],
      ),
      decoration: const BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            offset: Offset(-2, -10),
            color: Colors.black,
            spreadRadius: 25,
            blurRadius: 25,
          )
        ],
      ),
    );
  }

  DefaultTabController buildTabBar() {
    return const DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: RotatedBox(
        quarterTurns: 3,
        child: TabBar(
          isScrollable: true,
          labelPadding: EdgeInsets.symmetric(horizontal: 10),
          tabs: [
            Tab(
              text: 'Trailer',
            ),
            Tab(
              text: 'Cast',
            ),
            Tab(
              text: 'Overview',
            )
          ],
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
    );
  }

  Align buildBottomContainer(Size size, BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        alignment: Alignment.center,
        height: size.height * .07,
        width: size.width,
        color: const Color(0xFF0A2446),
        child: Text(
          'Book Now',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }

  Expanded buildText(Size size, BuildContext context) {
    return Expanded(
      child: Text(
        title,
        style:
            Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.grey),
      ),
    );
  }

  ListTile buildListTile(Size size, BuildContext context) {
    return ListTile(
      enabled: false,
      contentPadding: EdgeInsets.only(left: size.width * .13),
      title: Text(
        'The Spiderman',
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: Colors.white),
      ),
      subtitle: Text(
        'No Way Home',
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: Colors.white),
      ),
    );
  }

  Hero buildContainer1(Size size) {
    return Hero(
      tag: widget.heroId,
      child: Container(
        alignment: Alignment.bottomCenter,
        height: size.height * .6,
        width: size.width,
        child: buildBackdropFilter(size),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(widget.imageUrl),
          ),
        ),
      ),
    );
  }

  BackdropFilter buildBackdropFilter(Size size) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: Container(
        height: size.height * .5,
        width: size.width * .8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(widget.imageUrl),
          ),
        ),
      ),
    );
  }
}
