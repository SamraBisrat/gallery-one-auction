import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gallery_one_auction/Theme/app_theme.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({Key? key}) : super(key: key);

  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return Navigator.canPop(context);
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Card(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        "assets/images/placeholder.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Tunnel Of Love",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "SourceSansPro",
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.favorite_border_outlined,
                                  color: Colors.grey)
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              CircleAvatar(
                                  radius: 15,
                                  foregroundImage: AssetImage(
                                    "assets/images/userph.jpg",
                                  )),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "@Samra",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "SourceSansPro",
                                    color: Colors.black),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Description",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "SourceSansPro",
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Vitae et leo duis ut diam quam nulla. Est lorem ipsum dolor sit amet consectetur. Sed adipiscing diam donec adipiscing tristique risus. Sollicitudin ac orci phasellus egestas tellus rutrum. Mi proin sed libero enim sed. Fermentum et sollicitudin ac orci phasellus egestas tellus. Placerat in egestas erat imperdiet sed euismod nisi porta lorem. Diam in arcu cursus euismod quis viverra nibh cras pulvinar. In nibh mauris cursus mattis.",
                            style: TextStyle(fontFamily: "SourceSansPro"),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Card(
                            color: const Color(0xFFf6f5f7),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 15,
                                    backgroundImage: AssetImage(
                                        "assets/images/userplaceholder.jpg"),
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Current bid by @Azeb",
                                          style: TextStyle(
                                            fontFamily: "SourceSansPro",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          "27 August 2021 at 10:30 AM",
                                          style: TextStyle(
                                            fontFamily: "SourceSansPro",
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ]),
                                  const Text(
                                    "100 ETB",
                                    style: TextStyle(
                                        fontFamily: "SourceSansPro",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FractionallySizedBox(
                            widthFactor: 1,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Place a Bid"),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            AppTheme.primaryColor))),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
