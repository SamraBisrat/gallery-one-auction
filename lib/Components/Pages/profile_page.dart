import 'package:flutter/material.dart';
import 'package:gallery_one_auction/Components/Pages/item_detail_page.dart';

import '../Reusable Components/auction_item.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
            child: DefaultTabController(
                length: 2,
                child: Scaffold(
                  body: SingleChildScrollView(
                    child: Container(
                      color: Colors.white,
                      margin: MediaQuery.of(context).padding,
                      child: Column(
                        children: [
                          Stack(children: [
                            Container(
                              width: width,
                              height: height * 0.35,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/placeholder.jpeg'),
                                      fit: BoxFit.fill)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text("20",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30,
                                                fontFamily: "SourceSansPro")),
                                        Text(
                                          "Posts",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontFamily: "SourceSansPro"),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      // CircleAvatar(
                                      //   radius: 75.0,
                                      //   foregroundColor: Colors.orange,
                                      //   backgroundColor: Colors.white,
                                      //   child: Text(
                                      //     "SA",
                                      //     style: TextStyle(fontSize: 50),
                                      //   ),
                                      // ),
                                      CircleAvatar(
                                        radius: 50.0,
                                        backgroundImage: AssetImage(
                                            "assets/images/userph.jpg"),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "Samra Kahsay",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontFamily: "SourceSansPro",
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text("10",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30,
                                                fontFamily: "SourceSansPro")),
                                        Text(
                                          "Bid",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontFamily: "SourceSansPro"),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AppBar(
                              automaticallyImplyLeading: false,
                              backgroundColor: Colors.transparent,
                              elevation: 0.0,
                              actions: <Widget>[
                                PopupMenuButton<String>(
                                  itemBuilder: (BuildContext context) {
                                    return {'Settings', 'Logout'}
                                        .map((String choice) {
                                      return PopupMenuItem<String>(
                                        value: choice,
                                        child: Text(choice),
                                      );
                                    }).toList();
                                  },
                                ),
                              ],
                            )
                          ]),
                          Container(
                            height: height,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(40),
                                    topRight: const Radius.circular(40),
                                    bottomLeft: const Radius.circular(40),
                                    bottomRight: const Radius.circular(40))),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Posts",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "SourceSansPro",
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  child: TabBar(
                                    indicatorColor: Color(0xFF515fd9),
                                    tabs: [
                                      GestureDetector(
                                        child: const Tab(
                                            icon: Icon(Icons.grid_on,
                                                color: Color(0xFF515fd9)),
                                            child: Text("Posted Items",
                                                style: TextStyle(
                                                    color: Color(0xFF515fd9)))),
                                        onTap: () {},
                                      ),
                                      GestureDetector(
                                        child: const Tab(
                                          icon: Icon(
                                            Icons.bookmark_border_sharp,
                                            color: Color(0xFF515fd9),
                                          ),
                                          child: Text(
                                            "Saved Bids",
                                            style: TextStyle(
                                                color: Color(0xFF515fd9)),
                                          ),
                                        ),
                                        onTap: () {},
                                      )
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: TabBarView(children: [
                                    Container(
                                      child: SingleChildScrollView(
                                          child: Column(
                                        children: <Widget>[
                                          GestureDetector(
                                            child: AuctionItem(
                                              userName: "Samra",
                                              userImage:
                                                  "assets/images/placeholder.jpeg",
                                              currentBid: 50,
                                              description:
                                                  "This is one of a kind art piece made by me",
                                              name: "Meltdown Time",
                                              image:
                                                  "assets/images/placeholder.jpeg",
                                              likes: true,
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ItemDetail()));
                                            },
                                          ),
                                          GestureDetector(
                                            child: AuctionItem(
                                              userName: "Azeb",
                                              userImage:
                                                  "assets/images/placeholder.png",
                                              currentBid: 100,
                                              description:
                                                  "This is one of a kind art piece made by me",
                                              name: "Tunnel of Love",
                                              image:
                                                  "assets/images/placeholder.png",
                                              likes: true,
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ItemDetail()));
                                            },
                                          )
                                        ],
                                      )),
                                    ),
                                    Container(
                                      // height: height,
                                      child: SingleChildScrollView(
                                          child: Column(
                                        children: <Widget>[
                                          GestureDetector(
                                            child: AuctionItem(
                                              userName: "Samra",
                                              userImage:
                                                  "assets/images/placeholder.jpeg",
                                              currentBid: 50,
                                              description:
                                                  "This is one of a kind art piece made by me",
                                              name: "Meltdown Time",
                                              image:
                                                  "assets/images/placeholder.jpeg",
                                              likes: true,
                                            ),
                                          ),
                                          GestureDetector(
                                            child: AuctionItem(
                                              userName: "Azeb",
                                              userImage:
                                                  "assets/images/placeholder.png",
                                              currentBid: 100,
                                              description:
                                                  "This is one of a kind art piece made by me",
                                              name: "Tunnel of Love",
                                              image:
                                                  "assets/images/placeholder.png",
                                              likes: true,
                                            ),
                                          )
                                        ],
                                      )),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )

                //     ),
                //   ),
                // ],

                )));
  }
}
