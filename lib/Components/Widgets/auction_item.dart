import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gallery_one_auction/Theme/app_theme.dart';
import 'package:getwidget/getwidget.dart';

class AuctionItem extends StatefulWidget {
  final String userName;
  final String userImage;
  final String image;
  final String name;
  final String description;
  final bool likes;
  final int currentBid;

  AuctionItem({
    required this.userName,
    required this.userImage,
    required this.image,
    required this.name,
    required this.description,
    required this.likes,
    required this.currentBid,
  });

  @override
  _AuctionItemState createState() => _AuctionItemState();
}

class _AuctionItemState extends State<AuctionItem> {
  // List<Widget> rows = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Card(
          elevation: 0,
          borderOnForeground: false,
          child: Container(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 15,
                      foregroundImage: AssetImage(
                        "${widget.userImage}",
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "@${widget.userName}",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "SourceSansPro",
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset("${widget.image}",
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.name}",
                    style: const TextStyle(
                      fontFamily: "SourceSansPro",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Current Bid",
                style: TextStyle(
                    fontFamily: "SourceSansPro",
                    fontSize: 12,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${widget.currentBid} ETB",
                style: TextStyle(
                    fontFamily: "SourceSansPro",
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              FractionallySizedBox(
                  widthFactor: 1,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Place a Bid"),
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(3),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppTheme.primaryColor)))),
            ]),
          )),
    );
  }
}
