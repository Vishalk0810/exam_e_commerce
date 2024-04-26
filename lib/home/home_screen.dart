import 'package:flutter/material.dart';

import '../list/list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
              children: [
          Padding(
          padding: EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Icon(
                  Icons.account_circle,
                  size: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 7),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                  child: Icon(
                    Icons.shopping_cart,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: 50,
            width: 370,
            decoration: BoxDecoration(
                color: Colors.grey.shade500,
                borderRadius: BorderRadius.all(Radius.circular(32))),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Icon(Icons.search),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Search...',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Text(
                'Popular Item',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 30),
              child: Text(
                'see all',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 15),
            height: 200,
            width: 370,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Images/banner.jpg"),
                  fit: BoxFit.cover,
                ),
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 70,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  'All',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 70,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  'Fashion',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 70,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  'Beauty',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
        ...List.generate(
    productlist.length,
    (index)
    =>
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detail');
              Index = index;
            },
            child: products(
            image: productlist[index]['image'],
            name: productlist[index]['name'],
            price: productlist[index]['price']))),
    ],
    ),
    ),
    );
  }

  Column products(
      {required String image, required String name, required String price}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          height: 300,
          width: 370,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("image"),
              fit: BoxFit.cover,
            ),
            color: Colors.cyan,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
        ),
        Container(
          height: 100,
          width: 370,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)),
          ),
          child: Column(
            children: [
              Text(
                'name',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270),
                child: Text(
                  'price',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 1, right: 250),
                child: Text(
                  'price',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
