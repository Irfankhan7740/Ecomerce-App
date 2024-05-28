import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:newfire/ApiServievce/apiController.dart';

class ViewScreen extends StatelessWidget {
  ViewScreen({super.key});

 TodoController todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(





     body: ListView.builder(
    itemCount: todoController.todoList.length,


    itemBuilder: (context, int index){
    return Padding(padding: const EdgeInsets.all(10),
    child: Center(
    child: SingleChildScrollView(
    child: Column(
    children: [




    Container(
    child:   ListTile(
    title: Obx(() => Text(todoController.todoList[index].title.toString(),style: TextStyle(fontSize: 30,color: Colors.red),))
    ),


    ),

    ],
    ),
    ),
    ),);
    }
    ),


    );
  }

}
