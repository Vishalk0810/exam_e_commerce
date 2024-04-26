import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45,right: 320),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
                child: Icon(Icons.arrow_back,size: 25,)),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10,left: 12),
                height: 200,
                width: 370,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/tshirt 1.jpg"),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10,top: 20),
                          child: Text('Name...',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('1200/-',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 30),
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade600,
                                  borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                     setState(() {
                                       if(count>0)
                                       {
                                         count--;
                                       }
                                     });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(left: 2),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade800,
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Center(child: Text('-',style: TextStyle(color: Colors.white,
                                          fontSize: 30),)),
                                    ),
                                  ),
                                  Text('$count'),
                                  GestureDetector(
                                    onTap: () {
                                     setState(() {
                                       count ++;
                                     });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(left: 2),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade800,
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Center(child: Text('+',style: TextStyle(color: Colors.white,
                                          fontSize: 25),)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 35),
                              child: GestureDetector(
                                  child: Icon(Icons.delete)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

int count =1;