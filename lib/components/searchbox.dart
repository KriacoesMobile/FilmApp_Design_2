import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text('Search',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: Colors.grey[700]))),
      width: size.width * .9,
      height: size.width * .1,
      decoration: BoxDecoration(
        color: Colors.blueGrey[200],
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
