import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:intl/intl.dart';


class DateFormate extends StatefulWidget {
  const DateFormate({super.key, required this.title});



  final String title;

  @override
  State<DateFormate> createState() => _DateFormateState();
}

class _DateFormateState extends State<DateFormate> {
  var size,height,width;

  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  DateTime _DateTime = DateTime.now();
  TextEditingController _DateController=TextEditingController();
  late String text = 'Date';
  late String textA = 'Date';
  late String textB = 'Date';
  late String textC = 'Date';
  late String textD = 'Date';





  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;




    // TimeOfDay _timeOfDay = TimeOfDay.now();

    return SafeArea(
      child: Scaffold(



          body: Center(
            child:Card(
              elevation: 20,
              child: Container(
                height: 500,
                width: 340,

                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  

                  border: Border.all(color: Colors.black38)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    ElevatedButton(
                      
                      onPressed: (){
                        setState(() {
                          _SelectDate();
                        });

                      },


                      child: Text('$text',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.orange),),),
                    ElevatedButton(

                      onPressed: (){
                        setState(() {
                          _SelectDateA();
                        });

                      },


                      child: Text('$textA',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.red),),),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          _SelectDateB();
                        });

                      },


                      child: Text('$textB',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.black45),),),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          _SelectDateC();
                        });

                      },


                      child: Text('$textC',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.orange),),),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          _SelectDateD();
                        });

                      },


                      child: Text('$textD',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.yellow),),),







                  ],
                ),
              ),
            ),
          )
      ),
    );

  }
  Future <void> _SelectDate() async{
    DateTime ? _picked = await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate:DateTime(2100)



    );
    if(_picked != null){
      setState(() {

        print("irfan");
        print("_picked -  "+_picked.toString());
        // text = '${_picked.day}/${_picked.month}';
        text = '${DateFormat('dd'"/"'MMM'"/"'y').format(_picked)}';

      });
    }
  }
  Future <void> _SelectDateA() async{
    DateTime ? _picked = await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate:DateTime(2100)



    );
    if(_picked != null){
      setState(() {

        print("irfan");
        print("_picked -  "+_picked.toString());
        // text = '${_picked.day}/${_picked.month}';
        textA = '${DateFormat('jms').format(DateTime.now())}';

      });
    }
  }
  Future <void> _SelectDateB() async{
    DateTime ? _picked = await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate:DateTime(2100)



    );
    if(_picked != null){
      setState(() {

        print("irfan");
        print("_picked -  "+_picked.toString());
        // text = '${_picked.day}/${_picked.month}';
        textB = '${DateFormat('yMMMMEEEEd').format(_picked)}';

      });
    }
  }
  Future <void> _SelectDateC() async{
    DateTime ? _picked = await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate:DateTime(2100)



    );
    if(_picked != null){
      setState(() {

        print("irfan");
        print("_picked -  "+_picked.toString());
        // text = '${_picked.day}/${_picked.month}';
        textC = '${DateFormat('LLL').format(_picked)}';

      });
    }
  }
  Future <void> _SelectDateD() async{
    DateTime ? _picked = await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate:DateTime(2100)



    );
    if(_picked != null){
      setState(() {

        print("irfan");
        print("_picked -  "+_picked.toString());
        // text = '${_picked.day}/${_picked.month}';
        textD = '${DateFormat('add_MMMMEEEEd').format(_picked)}';

      });
    }
  }


}