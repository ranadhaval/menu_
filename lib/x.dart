import 'package:digital_menu/common.dart';
import 'package:digital_menu/order.dart';
import 'package:digital_menu/overview.dart';
import 'package:flutter/material.dart';

class new_1 extends StatefulWidget {
  int price;
  String name;
  new_1({required this.price, required this.name});
  // new_1({Key? key}) : super(key: key);

  @override
  State<new_1> createState() => _new_1State();
}

class _new_1State extends State<new_1> {
  temp tt = temp();
  int count = 0;
  int price = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "${widget.name}",
                    style: TextStyle(fontSize: 20, color: Colors.white60),
                  ))),
          SizedBox(
            width: 10,
          ),
          Expanded(
              flex: 1,
              child: Container(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "${widget.price}",
                    style: TextStyle(fontSize: 20, color: Colors.white60),
                  ))),
          Expanded(
              flex: 1,
              child: Container(
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.all(2),
                  height: 30,
                  // padding: EdgeInsets.only(left: 25),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          if (count == 0) {
                            setState(() {
                              count = 0;
                              price = 0;
                            });
                          } else {
                            setState(() {
                              count--;
                              price = price - widget.price;
                            });
                          }
                        },
                        child: CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.red,
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              size: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SingleChildScrollView(
                        child: Flexible(
                          child: Text("$count",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white54,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (count == 200) {
                              count = 200;
                            } else {
                              count++;
                              price = price + widget.price;
                            }
                          });
                        },
                        child: CircleAvatar(
                          radius: 9,
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))),
          Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (_) {
                        return Container(
                          decoration: BoxDecoration(
                              // color: Colors.transparent,
                              borderRadius: BorderRadius.only(),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("Assets/new.jpeg"))),
                          height: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.cancel,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  height: 40,
                                  width: 280,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black45,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Flexible(
                                          child: Text(
                                            "${widget.name}",
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white54),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  children: [
                                    Text("Total Quantity :-  $count ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                              ListTile(
                                trailing: InkWell(
                                  onTap: () {
                                    try {
                                      tt.add("fNpeXX2gM9uWvnGsCOcr",
                                          widget.name, price, "$count");
                                      Navigator.pop(context);
                                      setState(() {
                                        count = 0;
                                        price = 0;
                                      });
                                    } catch (e) {}
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                        child: Text(
                                      "ADD ORDER",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                                title: Text(
                                  "Total Amount",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                                subtitle: Text(
                                  " $price ₹",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: InkWell(
                  child: Container(
                      margin: EdgeInsets.all(5),
                      height: 30,
                      width: 20,
                      // padding: EdgeInsets.only(left: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white54),
                      child: Center(
                        child: Text(
                          "+ ADD",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      )),
                ),
              )),
        ],
      ),
    );
  }
}
