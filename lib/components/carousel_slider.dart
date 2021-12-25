import 'package:film_page_design/constant/constant.dart';
import 'package:flutter/material.dart';

class $CarouselSlider extends StatefulWidget {
  const $CarouselSlider({Key? key}) : super(key: key);

  @override
  State<$CarouselSlider> createState() => _$CarouselSliderState();
}

class _$CarouselSliderState extends State<$CarouselSlider> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
        child: ListView.builder(
            itemCount: listImage.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, int index) {
              print(index);
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
                      Expanded(
                        flex: 5,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage(listImage[index].toString())),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: size.width * .6,
                          height: size.width * .6,
                        ),
                      ),
                      buildTextExpanded(size),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/\$Hero');
                },
              );
            }));
  }

  // GestureDetector buildGestureDetector(Size size, BuildContext context) {
  //   return GestureDetector(
  //     child: Container(
  //       alignment: Alignment.topCenter,
  //       width: size.width * .6,
  //       margin: const EdgeInsets.symmetric(horizontal: 5.0),
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(30),
  //       ),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Expanded(
  //             flex: 5,
  //             child: Container(
  //               decoration: BoxDecoration(
  //                 image: DecorationImage(
  //                     fit: BoxFit.fitHeight, image: AssetImage(listImage[0])),
  //                 borderRadius: BorderRadius.circular(30),
  //               ),
  //               width: size.width * .6,
  //               height: size.width * .6,
  //             ),
  //           ),
  //           buildTextExpanded(size),
  //         ],
  //       ),
  //     ),
  //     onTap: () {
  //       Navigator.pushNamed(context, '/\$Hero');
  //     },
  //   );
  // }

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

  // Expanded buildImageExpanded(Size size) {
  //   return Expanded(
  //     flex: 5,
  //     child: Container(
  //       decoration: BoxDecoration(
  //         image: DecorationImage(
  //             fit: BoxFit.fitHeight, image: AssetImage(listImage[0])),
  //         borderRadius: BorderRadius.circular(30),
  //       ),
  //       width: size.width * .6,
  //       height: size.width * .6,
  //     ),
  //   );
  // }
}
