import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:newfire/ApiServievce/todoModel.dart';
import 'package:http/http.dart' as http;

class TodoController extends GetxController {

  var todoList = RxList<TodoModel>();
  TodoModel userDetail = TodoModel();
  List<TodoModel> userDetailsList = [];
}



