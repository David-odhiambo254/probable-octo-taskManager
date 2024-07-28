import 'package:flutter/material.dart';
import '../util/todo_tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  // list of todo tasks
  List toDoList = [
    ["Make Tutorial", false],
    ["Do Excersise", false]
  ];
  //checkbox was tapped
  void checkBoxChanged(bool? value, int index){}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow, // should pick from theme. Not like this.
        title: Text('TO DO'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
           taskName: toDoList[index][0],
           taskCompleted: toDoList[index][1],
           onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
