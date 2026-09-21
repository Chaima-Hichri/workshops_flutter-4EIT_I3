import 'package:flutter/material.dart';
class CardFilmItem extends StatelessWidget {
  String image,title;
   CardFilmItem({super.key,required this.image,required this.title});

  @override
  Widget build(BuildContext context) {
    return  Card(
      child:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset("assets/images/"+image),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Icon(Icons.star,color: Colors.amber,size: 27,)
                ],
              ),
            )
          ],
        ),
      ) ,
    );
  }
}
