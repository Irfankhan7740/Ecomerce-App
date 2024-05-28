import 'package:flutter/material.dart';
import 'package:newfire/ProductScreen.dart';
import 'package:newfire/drawer.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:intl/intl.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});




  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  

 

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    



    // TimeOfDay _timeOfDay = TimeOfDay.now();

    return SafeArea(
      child: Scaffold(





          body: SingleChildScrollView(
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                    Text("My Diary",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400),),
                    SizedBox(width: 30,),

                    Icon(Icons.arrow_back_ios_new,size: 25,),
                      IconButton(

                        icon: Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProductScreen()),
                          );
                          // do something
                        },
                      ),
                      // Container(
                      //   height: 40,
                      //   width: 120,
                      //   child: TextFormField(
                      //     controller: _DateController,
                      //
                      //     decoration: const InputDecoration(
                      //       labelText: "DATE",
                      //       filled: true,
                      //       prefixIcon: Icon(Icons.calendar_month_outlined),
                      //       enabledBorder: OutlineInputBorder(
                      //           borderSide: BorderSide.none
                      //       ),focusedBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(color:Colors.transparent
                      //       ),
                      //
                      //     ),
                      //     ),
                      //     readOnly: true,
                      //     onTap: (){
                      //       setState(() {
                      //         _SelectDate();
                      //       });
                      //     },
                      //   ),
                      // ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            _SelectDate();
                          });

                        },


                      child: Text('$text'),),



                    // Icon(Icons.calendar_month_outlined,size: 25,),




                    Icon(Icons.arrow_forward_ios_outlined,size: 25,),


    ]),

                SizedBox(height: height*0.06,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child: Text("Mediterranean diet",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                    SizedBox(width: width*0.16,),
                    Row(
                      children: [
                        Text("Detail",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.blueAccent),),
                        SizedBox(width: width*0.01,),
                        Icon(Icons.arrow_forward)
                      ],
                    ),



                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Card(
                    elevation: 2,
                    child: Container(
                      height: height*0.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Row(
                            children: [
                              SizedBox(width: width*0.12),


                              Row(
                                children: [

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 1.8,
                                            color: Colors.blueAccent,
                                          ),
                                          SizedBox(width: width*0.03,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              Text("Eaten",style: TextStyle(fontSize: 20),),
                                              SizedBox(height: height*0.01,),
                                              Row(
                                                children: [
                                                  Icon(Icons.heart_broken_sharp,color: Colors.blueAccent,),
                                                  SizedBox(width: width*0.03,),
                                                  Text("1170",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                                                  SizedBox(width: width*0.03,),
                                                  Text("kcal",style:TextStyle(fontSize: 20),),
                                                  SizedBox(width: 50,),

                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: height*0.03,width: width*0.4,),
                                      Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 1.8,
                                            color: Colors.red,
                                          ),
                                          SizedBox(width: width*0.03,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              Text("Burned",style:TextStyle(fontSize: 20,),),
                                              SizedBox(height: height*0.01,),
                                              Row(

                                                children: [
                                                  Icon(Icons.heart_broken_sharp,color: Colors.red,),
                                                  SizedBox(width: width*0.03,),
                                                  Text("102",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                                                  SizedBox(width: width*0.03,),
                                                  Text("kcal",style:TextStyle(fontSize: 20),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),



                                      SizedBox(
                                        height: 15,
                                      ),



                                    ],
                                  ),
                                ],
                              ),
                              new CircularPercentIndicator(
                                radius: 45.0,
                                lineWidth: 5.0,
                                percent: 0.5,
                                center: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    new Text("1503",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.blueAccent),),
                                    Text('kcal left'),
                                  ],
                                ),
                                progressColor: Colors.blue,

                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: [
                              Column(
                                children: [
                                  Text("Carbs",style: TextStyle(fontSize: 15,fontWeight:FontWeight.w700 ),),
                                  SizedBox(height: height*0.01,),
                                  LinearPercentIndicator(
                                    width: 70.0,
                                    lineHeight: 7.0,
                                    percent: 0.88,
                                    backgroundColor: Colors.blue[100],
                                    progressColor: Colors.blue,
                                  ),
                                  SizedBox(height: height*0.01,),
                                  Text("12g left")
                                ],
                              ),
                              Column(
                                children: [
                                  Text("Protien",style: TextStyle(fontSize: 15,fontWeight:FontWeight.w700 ),),
                                  SizedBox(height: height*0.01,),
                                  LinearPercentIndicator(
                                    width: 70.0,
                                    lineHeight: 7.0,
                                    percent: 0.5,
                                    backgroundColor: Colors.red[50],
                                    progressColor: Colors.red,
                                  ),
                                  SizedBox(height: height*0.01,),
                                  Text("30g left")

                                ],
                              ),
                              Column(
                                children: [
                                  Text("Fat",style: TextStyle(fontSize: 15,fontWeight:FontWeight.w700 ),),
                                  SizedBox(height: height*0.01,),
                                  LinearPercentIndicator(
                                    width: 70.0,
                                    lineHeight: 7.0,
                                    percent: 0.5,
                                    backgroundColor: Colors.yellow[100],
                                    progressColor: Colors.yellow,
                                  ),
                                  SizedBox(height: height*0.01,),
                                  Text("10g left")
                                ],
                              ),


                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(child:
                    Text("Meals today",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                    SizedBox(width: width*0.16,),
                    Row(
                      children: [
                        Text("Custamize",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.blueAccent),),
                        SizedBox(width: width*0.01,),
                        Icon(Icons.arrow_forward)
                      ],
                    ),





                  ],
                ),
                SizedBox(height: height *0.03,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                            alignment: Alignment.topRight,
                          clipBehavior:  Clip.none,

                          children: [
                            Container(
                              height: height*0.3,
                            width:width*0.5,



                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.red, Colors.orange, Colors.yellow]
                                  ),

                                  borderRadius: BorderRadius.only(topRight: Radius.circular(100))
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: height*0.05,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: height*0.01,),

                                      Text("Breakfast",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w500),),
                                      SizedBox(height: height*0.01,),
                                      Text("Bread,",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),),
                                      SizedBox(height: height*0.001,),
                                      Text("Peanyt Butter,",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),),
                                      SizedBox(height: height*0.001,),
                                      Text("Apple",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),),



                                    ],
                                  ),
                                  SizedBox(height: height*0.04,),
                                  Row(


                                    children: [
                                      SizedBox(width: width*0.09,),
                                      Text("525",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.w500),),
                                      Text("kcal",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500),),

                                    ],
                                  ),
                                ],
                              ),

                            ),
                            Positioned(
                              bottom: 200,
                              right: 70,
                              left: -20,

                              child: Container(
                                height: height*0.09,
                                width: width*1,



                                decoration: BoxDecoration(
                                  color: Colors.white38
                                    ,

                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70),bottomLeft: Radius.circular(70) )

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/png-image.png'),
                                )
                                ,



                                ),
                              ),



                        ]),
                      ),


                      SizedBox(width: width*0.02,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                            alignment: Alignment.topRight,
                            clipBehavior:  Clip.none,

                            children: [
                              Container(
                                height: height*0.3,
                                width:width*0.5,



                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Colors.blue.shade500,Colors.blue, Colors.blue.shade900,]
                                    ),

                                    borderRadius: BorderRadius.only(topRight: Radius.circular(100))
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: height*0.05,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: height*0.01,),

                                        Text("Lunch",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w500),),
                                        SizedBox(height: height*0.01,),
                                        Text("Salmon,",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),),
                                        SizedBox(height: height*0.001,),
                                        Text("Mixed veggies,",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),),
                                        SizedBox(height: height*0.001,),
                                        Text("Avocodo",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),),



                                      ],
                                    ),
                                    SizedBox(height: height*0.04,),
                                    Row(


                                      children: [
                                        SizedBox(width: width*0.09,),
                                        Text("602",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.w500),),
                                        Text("kcal",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500),),

                                      ],
                                    ),
                                  ],
                                ),

                              ),
                              Positioned(
                                bottom: 200,
                                right: 70,
                                left: -20,

                                child: Container(
                                  height: height*0.09,
                                  width: width*1,



                                  decoration: BoxDecoration(
                                      color: Colors.white38
                                      ,

                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(70),bottomLeft: Radius.circular(70) )

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset('assets/burgerking.png'),
                                  )
                                  ,



                                ),
                              ),



                            ]),
                      ),
                      SizedBox(width: width*0.02,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                            alignment: Alignment.topRight,
                            clipBehavior:  Clip.none,

                            children: [
                              Container(
                                height: height*0.3,
                                width:width*0.5,



                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Colors.pink.shade300,Colors.pink.shade300, Colors.pink.shade900,]
                                    ),

                                    borderRadius: BorderRadius.only(topRight: Radius.circular(100))
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: height*0.05,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: height*0.01,),

                                        Text("Snack",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w500),),
                                        SizedBox(height: height*0.01,),
                                        Text("Recommend,",style: TextStyle(fontSize: 17,color: Colors.white38,fontWeight: FontWeight.w500),),



                                      ],
                                    ),
                                    SizedBox(height: height*0.01,),
                                    Row(


                                      children: [
                                        SizedBox(width: width*0.12,),
                                        Text("800",style: TextStyle(fontSize: 33,color: Colors.white38),),
                                        Text("kcal",style: TextStyle(fontSize: 15,color: Colors.white38,),)

                                      ],
                                    ),
                                  ],
                                ),

                              ),
                              Positioned(
                                bottom: 200,
                                right: 70,
                                left: -20,

                                child: Container(
                                  height: height*0.09,
                                  width: width*1,



                                  decoration: BoxDecoration(
                                      color: Colors.white38
                                      ,

                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(70),bottomLeft: Radius.circular(70) )

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset('assets/png-image.png'),
                                  )
                                  ,



                                ),
                              ),



                            ]),
                      ),



                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(child:
                    Text("Body measurement",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                    SizedBox(width: width*0.16,),
                    Row(
                      children: [
                        Text("Today",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.blueAccent),),
                        SizedBox(width: width*0.01,),
                        Icon(Icons.arrow_forward)
                      ],
                    ),




                  ],
                ),


                ],
            ),
          )
      ),
    );


  }
  Future <void> _SelectDate() async{
    DateTime ? _picked = await showDatePicker(context: context,
        initialDate: _DateTime,
        firstDate: DateTime(2000),
        lastDate:DateTime(2100)



    );
    if(_picked != null){
      setState(() {

        print("irfan");
        print("_picked -  "+_picked.toString());
        // text = '${_picked.day}/${_picked.month}';
         text = '${DateFormat('MMMd').format(_picked)}';
      });
    }
  }


}