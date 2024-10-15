import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deshimart/bestselling.dart';
import 'package:deshimart/category_container.dart';
import 'package:deshimart/data.dart';
import 'package:deshimart/dumy_container.dart';
import 'package:deshimart/itemcontainer.dart';
import 'package:deshimart/productview.dart';
import 'package:deshimart/profile.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, left: 20),
                  width: 33,
                  height: 38,
                  child: Image.asset("assets/login/Group 6908.png"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 50),
                  child: Icon(
                    Icons.location_on,
                    size: 30,
                    color: Colors.grey.shade600,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    " Karachi,Pakistan",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  hintText: "Search",
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color(0xff53B175),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: 368,
              height: 114,
              child: Image.asset("assets/login/banner.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Exclusive Offer",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff53B175)),
                  ),
                ),
              ],
            ),
            Container(
              height: 278,
              child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection('data').snapshots(),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.hasData) {
                    final dataList = snapshot.data!.docs;

                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dataList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Productview(
                                    title: dataList[index]['title'],
                                    price: dataList[index]['price'],
                                    quantity: dataList[index]['quantity'],
                                    weight: dataList[index]['weight'],
                                    image:
                                        NetworkImage(dataList[index]['image'])),
                              ),
                            );
                          },
                          child: Itemcontainer(
                              price: dataList[index]['price'],
                              quantity: dataList[index]['quantity'],
                              weight: dataList[index]['weight'],
                              title: dataList[index]['title'],
                              image: NetworkImage(dataList[index]['image'])),
                        );
                      },
                    );
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return Text("waiting");
                  } else if (snapshot.hasError) {
                    return Text("Error is here");
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Best Selling",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff53B175)),
                  ),
                ),
              ],
            ),
            Container(
              height: 278,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: itemsData.name.length,
                itemBuilder: (BuildContext context, int index) {
                  return DumyContainer(
                    price: 4.99,
                    quantity: 7,
                    weight: "pcs",
                    title: "${itemsData.name[index]}",
                    image: AssetImage("${itemsData.assetImage[index]}"),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Groceries",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff53B175)),
                  ),
                ),
              ],
            ),
            Container(
              height: 138,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Grocery.image.length,
                itemBuilder: (BuildContext context, int index) {
                  return CategoryContainer(
                    colors: ColorsLoop.colors[index % ColorsLoop.colors.length],
                    image: AssetImage(Grocery.image[index]),
                    title: Grocery.name[index],
                  );
                },
              ),
            ),
            Container(
              height: 278,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Data.name.length,
                itemBuilder: (BuildContext context, int index) {
                  return DumyContainer(
                    price: 15.99,
                    quantity: 1,
                    weight: "kg",
                    title: "${Data.name[index]}",
                    image: AssetImage("${Data.assetImage[index]}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
