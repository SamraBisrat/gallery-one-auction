import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gallery_one_auction/Components/Pages/item_detail_page.dart';
import 'package:get/instance_manager.dart';

import '../Widgets/auction_item.dart';

class Auction extends StatefulWidget {
  const Auction({Key? key}) : super(key: key);

  @override
  _AuctionState createState() => _AuctionState();
}

class _AuctionState extends State<Auction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "Gallery One Auction",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontFamily: "SourceSansPro",
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/placeholder.png"),
              ),
            ),
          ]),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          GestureDetector(
            child: AuctionItem(
              userName: "Samra",
              userImage: "assets/images/placeholder.jpeg",
              currentBid: 50,
              description: "This is one of a kind art piece made by me",
              name: "Meltdown Time",
              image: "assets/images/placeholder.jpeg",
              likes: true,
            ),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ItemDetail()));
            },
          ),
          GestureDetector(
            child: AuctionItem(
              userName: "Azeb",
              userImage: "assets/images/placeholder.png",
              currentBid: 100,
              description: "This is one of a kind art piece made by me",
              name: "Tunnel of Love",
              image: "assets/images/placeholder.png",
              likes: true,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ItemDetail()));
            },
          )
        ],
      )),
    );
  }
}
