import 'dart:ui';

import 'package:film_page_design/constant/constant.dart';
import 'package:flutter/material.dart';

class $Hero extends StatefulWidget {
  const $Hero({Key? key}) : super(key: key);

  @override
  _$heroState createState() => _$heroState();
}

class _$heroState extends State<$Hero> {
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
      child: Stack(
        children: [
          buildListTile(size, context),
          buildPositionedText1(size, context),
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

  Positioned buildBottomContainer(Size size, BuildContext context) {
    return Positioned(
      bottom: 0,
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

  Positioned buildPositionedText1(Size size, BuildContext context) {
    return Positioned(
      left: size.width * .1,
      top: size.width * .2,
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
      contentPadding: EdgeInsets.only(left: size.width * .1),
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

  Container buildContainer1(Size size) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: size.height * .6,
      width: size.width,
      child: buildBackdropFilter(size),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/image/spiderman.jpg'),
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
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/image/spiderman.jpg'),
          ),
        ),
      ),
    );
  }
}
