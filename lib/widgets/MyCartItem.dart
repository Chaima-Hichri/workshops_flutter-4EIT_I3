import 'package:flutter/material.dart';
class MyCartItem extends StatelessWidget {
  String image ,title;
   MyCartItem({super.key,required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Card(
      child:Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/"+image,width: 150,height: 150,),
            Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Icon(Icons.delete,color: Colors.red,size: 27,)

          ],
        ),
      ) ,
    );;
  }
}
