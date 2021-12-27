import 'package:film_page_design/constant/constant.dart';
import 'package:film_page_design/wallpaper/wallpaper.dart';
import 'package:flutter/material.dart';

class CarouselSliderP extends StatefulWidget {
  const CarouselSliderP({Key? key}) : super(key: key);

  @override
  State<CarouselSliderP> createState() => _CarouselSliderPState();
}

class _CarouselSliderPState extends State<CarouselSliderP> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      child: ListView.builder(
        itemCount: listImage.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return buildGestureDetector(size, index, context);
        },
      ),
    );
  }

  GestureDetector buildGestureDetector(
      Size size, int index, BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.topCenter,
        width: size.width * .6,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildImageExpanded(index, size),
            buildTextExpanded(size),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          buildNavigatorWallpaper(index),
        );
      },
    );
  }

  MaterialPageRoute<dynamic> buildNavigatorWallpaper(int index) {
    return MaterialPageRoute(
      builder: (context) => Wallpaper(
        heroId: 'popular$index',
        imageUrl: listImage[index],
      ),
    );
  }

  Expanded buildImageExpanded(int index, Size size) {
    return Expanded(
      flex: 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          listImage[index],
          fit: BoxFit.cover,
          width: size.width * .6,
          height: size.width * .6,
        ),
      ),
    );
  }

  Expanded buildTextExpanded(Size size) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: size.width * .1),
          child: const ListTile(
              title: Text('The Spiderman'), subtitle: Text('No Way Home')),
        ),
        width: size.width * .6,
        height: size.width * .2,
      ),
    );
  }
}
