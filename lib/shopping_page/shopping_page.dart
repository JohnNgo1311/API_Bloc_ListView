import 'package:flutter/material.dart';

class ShoppingApp extends StatefulWidget {
  const ShoppingApp({super.key});
  @override
  _ShoppingAppState createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  bool vien1 = false;
  bool vien2 = false;
  bool vien3 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                color: Color.fromARGB(255, 37, 135, 180),
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Container(
                        color: Color.fromARGB(255, 37, 135, 184),
                        padding: EdgeInsets.fromLTRB(20, 45, 20, 0),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                  child: Icon(Icons.arrow_back,
                                      color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(Icons.shopping_cart,
                                        color: Colors.white),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                    child: Text("Aristoratic HandBag ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15))),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 0, 15, 100),
                                    child: Text("Office Code ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold))),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                    child: Text("Price ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15))),
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                    child: Text("\$${234}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold))),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                          child: Container(
                        height: 470.55,
                        margin: EdgeInsets.fromLTRB(0, 310, 0, 0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                        ),
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 70, 15, 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //Row đầu tiên chỉ có "color" và "size"
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 30, 0),
                                  //ROW CHO "COLOR" VÀ "SIZE"
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 130, 0),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 90),
                                              child: Row(children: [
                                                Text("Color",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black54)),
                                              ]),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Size",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black54,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          )
                                        ]),
                                  ),
                                ),
                                //ROW  CÓ BUTTON VÀ "12CM"
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 90),
                                      child: Row(
                                        children: [
                                          Row(
                                            children: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    shape: CircleBorder(),
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 34, 100, 186),
                                                    fixedSize: Size(40, 40)),
                                                onPressed: () {
                                                  setState(() {
                                                    vien1 = !vien1;
                                                    vien3 = false;
                                                    vien2 = false;
                                                  });
                                                },
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: vien1
                                                        ? Border.all(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    255),
                                                            width: 2)
                                                        : null,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    shape: CircleBorder(),
                                                    backgroundColor:
                                                        Colors.yellow,
                                                    fixedSize: Size(2, 2)),
                                                onPressed: () {
                                                  setState(() {
                                                    vien2 = !vien2;
                                                    vien1 = false;
                                                    vien3 = false;
                                                  });
                                                },
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: vien2
                                                        ? Border.all(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    255),
                                                            width: 2)
                                                        : null,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    shape: CircleBorder(),
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 46, 46, 46),
                                                    fixedSize: Size(2, 2)),
                                                onPressed: () {
                                                  setState(() {
                                                    vien3 = !vien3;
                                                    vien1 = false;
                                                    vien2 = false;
                                                  });
                                                },
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: vien3
                                                        ? Border.all(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    255),
                                                            width: 2)
                                                        : null,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    //ROW CHO 12CM
                                    Row(
                                      children: [
                                        Text(
                                          "12cm",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                // ROW STRING
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 15, 0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          """Lorem Ipsum is simply dummy text of the printing and
typesetting industry. Lorem Ipsum has been the
insdustry's standard dummy text ever since. When an
unknown printer took a galley.""",
                                          overflow: TextOverflow.clip,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            fontFamily: "Roboto",
                                            color:
                                                Color.fromARGB(255, 82, 74, 74),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13.5,
                                            height: 2,
                                          ),
                                        ),
                                      ],
                                    )),
                                // REMOVE OR ADD TO CART
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(7, 25, 0, 0),
                                  child: removeoradd(),
                                ),
                                // ADDING TO CART (display an icon cart_shopping)
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(7, 25, 0, 0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                height: 60,
                                                width: 60,
                                                child: OutlinedButton(
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                          side: BorderSide(
                                                              width: 2,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      108,
                                                                      172,
                                                                      224)),
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          )),
                                                  onPressed: () {},
                                                  child: Icon(
                                                    Icons.add_shopping_cart,
                                                    color: Color(0xFF3D82AE),
                                                    size: 35,
                                                  ),
                                                )),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            children: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15)),
                                                    backgroundColor:
                                                        Color(0xFF3D82AE),
                                                    fixedSize: Size(250, 60)),
                                                onPressed: () {},
                                                child: Text(
                                                  "BUY NOW",
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ]),
                                ),
                              ],
                            )),
                      )),

                      // Túi
                      Padding(
                        padding: const EdgeInsets.fromLTRB(150, 140, 20, 0),
                        child: Row(
                          children: [
                            Image.asset("asset/images/bag_1.png"),
                          ],
                        ),
                      )
                    ])
                  ],
                ))));
  }
}

class removeoradd extends StatefulWidget {
  @override
  _removeoradd createState() => _removeoradd();
}

class _removeoradd extends State<removeoradd> {
  int soluongitem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //ICON REMOVE
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(0),
              child: Container(
                  height: 60,
                  width: 60,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          width: 2, color: Color.fromARGB(255, 108, 172, 224)),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () {
                      if (soluongitem > 1) {
                        setState(() {
                          soluongitem--;
                        });
                      }
                    },
                    child: Icon(
                      Icons.remove,
                      color: Colors.black,
                      size: 35,
                    ),
                  )),
            ),
            // ĐẾM ITEM ĐƯỢC BỎ VÀO CART
            Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(shape: BoxShape.rectangle),
                  child: Center(
                    child: Text(
                      "${soluongitem}",
                      style: TextStyle(fontSize: 30),
                    ),
                  )),
            ),
            // ICON ADD
            Padding(
              padding: EdgeInsets.all(0),
              child: Container(
                  height: 60,
                  width: 60,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 108, 172, 224)),
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                    onPressed: () {
                      setState(() {
                        soluongitem++;
                      });
                    },
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 35,
                    ),
                  )),
            ),
          ],
        ),
        // ICON HEART
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 35,
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
    ;
  }
}
