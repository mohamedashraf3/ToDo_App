import 'package:flutter/material.dart';

import '../../model/Item_model.dart';
class Item extends StatelessWidget {
   Item({super.key,required this.details});
final DoModel details;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(left:10 ,top: 10,right:10 ,bottom: 0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: Colors.amberAccent)
        ),
        child:  Padding(
          padding: EdgeInsets.all(11.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(details.action,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              Text(details.date,style: TextStyle(color: Colors.grey),),
              Text(details.time,style: TextStyle(color: Colors.grey),),
            ],
          ),
        ),
      ),
    );;
  }
}
