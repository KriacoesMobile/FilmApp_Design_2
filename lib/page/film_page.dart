import 'package:film_page_design/constant/constant.dart';

import '../components/avatar_menu.dart';
import '../components/carousel_slider.dart';
import '../components/category_list_builder.dart';
import '../components/defaulttabcontroller.dart';
import '../components/searchbox.dart';
import 'package:flutter/material.dart';

class FilmPage extends StatefulWidget {
  const FilmPage({Key? key}) : super(key: key);

  @override
  _FilmPageState createState() => _FilmPageState();
}

class _FilmPageState extends State<FilmPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: EdgeInsets.only(left: kDefaultPadding(context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AvatarAndMenu(),
            const SearchBox(),
            const SizedBox(height: 15),
            const KDefaultTabController(),
            const SizedBox(height: 5),
            SizedBox(height: size.width * .37, child: const CategoryList()),
            const CarouselSliderP(),
          ],
        ),
      ),
    );
  }
}
