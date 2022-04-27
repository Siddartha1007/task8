import 'package:flutter/material.dart';
import '../screen/login.dart';

class Func extends StatelessWidget {
  final String name;
  final Icon ic;
  final String number;
  final Color col;

  Func({
    required this.name,
    required this.ic,
    required this.number,
    required this.col,
  });

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 2,vertical: 1.5),
              decoration: BoxDecoration(
                color: col,
                borderRadius: BorderRadius.circular(8)
              ),
              child: ic,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(number+' specialist'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}