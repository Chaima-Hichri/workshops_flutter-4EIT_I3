import 'package:flutter/material.dart';
class itemGridViewFilm extends StatelessWidget {
  final String image,title;

  const itemGridViewFilm({super.key,required this.image,required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset("assets/images/"+image),
            Container(height: 10,),
            Text(title,style: TextStyle(
              fontWeight: FontWeight.bold
            ),)


          ],
        ),
      ) ,

    );
  }
}
