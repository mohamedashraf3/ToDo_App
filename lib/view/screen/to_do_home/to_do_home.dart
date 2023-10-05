import 'package:appbar_task/view/screen/archive/archive.dart';
import 'package:appbar_task/view/screen/done/done.dart';
import 'package:appbar_task/view/screen/task/task.dart';
import 'package:flutter/material.dart';

class ToDoHome extends StatelessWidget {
  const ToDoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "To Do App",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              const TabBar(
                unselectedLabelColor: Colors.white,
                labelColor: Colors.amberAccent,
                indicatorWeight: 3,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    text: "Tasks",
                    icon: Icon(
                      Icons.task,
                      color: Colors.amber,
                    ),
                  ),
                  Tab(
                    text: "Done",
                    icon: Icon(
                      Icons.done_all,
                      color: Colors.amber,
                    ),
                  ),
                  Tab(
                    text: "Archive",
                    icon: Icon(
                      Icons.archive_outlined,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: TabBarView(children: [
                    Task(),
                    Done(),
                    Archive(),
              ]))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        splashColor: Colors.amberAccent,
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
