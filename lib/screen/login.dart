import 'package:flutter/material.dart';
import 'package:task6/data.dart';
import '../widget/func.dart';

class Login extends StatelessWidget 
{
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text('Speciality'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[50]),
        child: GridView(
          padding: EdgeInsets.all(15),
          
          children: DATA.map(
            (e) => Func( 
              col: e.col,
              ic: e.ic,
              name:e.name,
              number:e.number, 
            ),
          ).toList(),
    
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
    
        ),
      ),
    );
  }
}