import 'package:appbar_task/view/component/item.dart';
import 'package:flutter/material.dart';

import '../../../model/Item_model.dart';

class Done extends StatelessWidget {
   Done({super.key});
  List <DoModel>done_details=[
    DoModel(action: "Go To Gym", date: "5-10-2023", time: "12.38"),
    DoModel(action: "Read a Book", date: "6-10-2023", time: "15:45"),
    DoModel(action: "Work on Project", date: "7-10-2023", time: "10:20"),
    DoModel(action: "Practice Coding", date: "8-10-2023", time: "18:00"),
    DoModel(action: "Meet Friends", date: "9-10-2023", time: "20:30"),
    DoModel(action: "Cook Dinner", date: "10-10-2023", time: "19:15"),
    DoModel(action: "Learn Flutter", date: "11-10-2023", time: "14:50"),
    DoModel(action: "Watch a Movie", date: "12-10-2023", time: "21:45"),
    DoModel(action: "Write Blog Post", date: "13-10-2023", time: "16:10"),
    DoModel(action: "Take a Walk", date: "14-10-2023", time: "17:30"),
    DoModel(action: "Buy Groceries", date: "15-10-2023", time: "11:20"),
    DoModel(action: "Listen to Podcast", date: "16-10-2023", time: "13:40"),
    DoModel(action: "Visit Museum", date: "17-10-2023", time: "10:00"),
    DoModel(action: "Solve Puzzles", date: "18-10-2023", time: "19:00"),
    DoModel(action: "Plan Vacation", date: "19-10-2023", time: "15:15"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return Item(details: done_details[index]);
    }, itemCount: done_details.length);
  }
}
