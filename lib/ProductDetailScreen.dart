import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductDetailScreen extends StatefulWidget {
  ProductDetailScreen({super.key, this.Index});

  var Index;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  var number;
  int _currentIndex = 0; // Initial index

  // void _incrementIndex() {
  //   setState(() {
  //     widget.Index++; // Increment index
  //   });
  // }
  List itemList = [];

  @override
  initState() {
    print("initState Called");
    getProductApi();
  }

  getProductApi() async {
    var url = 'https://api.escuelajs.co/api/v1/products';
    var response = await http.get(Uri.parse(url));
    setState(() {
      itemList = jsonDecode(response.body);
      print("response itemList-->> " + itemList.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          "Product Detai Screen",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: itemList.isEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: CircularProgressIndicator()),
                Text("Please wait")
              ],
            )
          : Column(
              children: [
                (Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 450,
                      child: Image.network(
                        itemList[widget.Index]["images"][0].toString(),
                      ),
                    ),
                    Text(
                      itemList[widget.Index]["title"],
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Price - Rs." +
                          itemList[widget.Index]["price"].toString(),
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Description - " +
                          itemList[widget.Index]["description"].toString(),
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // InkWell(
                    //   onTap: () {
                    //     setState(() {
                    //       if (widget.Index > 0) {
                    //         widget.Index = widget.Index - 1;
                    //
                    //         number = 0;
                    //       }
                    //     });
                    //   },
                    //   child: Container(
                    //       color: Colors.black45,
                    //       child: Text(
                    //         "Previous",
                    //         style: TextStyle(
                    //             fontSize: 30,
                    //             fontWeight: FontWeight.w800,
                    //             color: Colors.white),
                    //       )),
                    // ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (widget.Index > 0) {
                            widget.Index = widget.Index - 1;

                            number = 0;
                          }
                        });
                      },
                      child: Text(
                        "Previous",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widget.Index = widget.Index + 1;

                          number = 0;
                        });
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
    );
  }
}
