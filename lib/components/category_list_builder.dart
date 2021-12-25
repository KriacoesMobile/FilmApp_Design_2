import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
   return ListView.builder(
      padding: const EdgeInsets.all(25),
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          width: size.width * .2,
          decoration: BoxDecoration(
            color: Colors.blueGrey[300],
            borderRadius: BorderRadius.circular(15),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  offset: Offset(3, 6),
                  color: Colors.black45,
                  spreadRadius: 1,
                  blurRadius: 5),
            ],
          ),
          child: Text('category ${index + 1}'),
        );
      },
    );
  }
}