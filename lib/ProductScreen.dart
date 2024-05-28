import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:newfire/ProductDetailScreen.dart';


class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  var size,height,width;
  List itemList = [];

  @override
  initState() {
    print("initState Called");
    getProductApi();
  }

  getProductApi()async{
    var url = 'https://api.escuelajs.co/api/v1/products';
    var response = await http.get(Uri.parse(url));
    setState((){

      itemList = jsonDecode(response.body) ;
      print("response itemList-->> "+itemList.toString());
    });


  }
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Product Screen",style: TextStyle(color: Colors.white),),

        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],

      ),
      body: itemList.length==0 ?  Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          Text('Loading')
        ],
      )) :
      GridView.builder(
          itemCount: itemList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              childAspectRatio: 3/4,
              mainAxisSpacing: 5.0
          ),
          itemBuilder: (BuildContext context, int index){
            return Card(
              elevation: 7,
              child: Column(

                children: [
                  Container(
                    width: width,

                    child: InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  ProductDetailScreen(Index: index,)),
                          );
                        });
                      },
                      child: Container(
                        child: Image.network(
                          itemList[index]["images"][0].toString(),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            );


          }),

    );
  }
}
