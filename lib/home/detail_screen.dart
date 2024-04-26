import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../list/list.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 7),
                  child: Icon(
                    Icons.shopping_cart,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          img(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    '28',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    '30',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    '32',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    '34',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    '36',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 318.5,
            width: 370,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(30),
            ),
            child: detail(context),
          )
        ],
      ),
    );
  }

  Column detail(BuildContext context) {
    return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      'name...',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: Text(
                      '1200/-',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200,top: 10),
                child: Text('Description : '
                   ,style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20
                ),),
              ),
              Text('Here my new exploration for the Fashion Mobile App, I created a  to sell clothes and the colors I used are pretty how is it possible!'
                ,style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                ),),
              GestureDetector(
                onTap: () {
                  cart.add();
                },
                child: Container(
                  margin: EdgeInsets.only(top: 25),
                  height: 70,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Icon(Icons.shopping_cart),
                      ),
                      Text('ADD to Cart',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
              )
            ],
          );
  }

  Container img() {
    return Container(
          height: 400,
          width: 370,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Images/tshirt 1.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(30)),
        );
  }
}
