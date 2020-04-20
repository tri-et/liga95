import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextStyle _labelStyle = TextStyle(
    color: Colors.white,
    fontSize: 16.0,
  );
  void _itemClick(name) {
    if (name == "More") {
      _moreGameModalBottomSheet();
    } else {
      print(name);
    }
  }

  void _moreGameModalBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.black,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Container(
            height: 450.0,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xff2b2b2b),
                  width: 0.5,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20.0),
                Center(
                  child: Container(
                    height: 5,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color(0xff2b2b2b),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 30.0, 0, 30.0),
                  child: Text(
                    "Explore LIGA95",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                GridView.count(
                  crossAxisCount: 4,
                  childAspectRatio: 0.8,
                  shrinkWrap: true,
                  children: <Widget>[
                    GameItem(
                      urlImage: "assets/icon/4.png",
                      name: "SBO",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/8.png",
                      name: "A2",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/togel.png",
                      name: "Togel",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/pokerqq.png",
                      name: "Poker-QQ",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/jdb.png",
                      name: "JDB Slot",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/fish.png",
                      name: "JDB Fish",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/haba.png",
                      name: "Habanero",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/wm.png",
                      name: "WM \n Casino",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/tangkas.png",
                      name: "Tangkas",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/gd.png",
                      name: "GD88",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/sexy.png",
                      name: "Sexy",
                      itemOnTap: _itemClick,
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1a1a1a),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF10305f),
        leading: FlatButton(
          onPressed: () {
            print("1223");
          },
          child: Image.asset(
            "assets/icon/scan.png",
          ),
        ),
        title: Image.asset(
          "assets/icon/logo.png",
          scale: 1.8,
        ),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                MediaQuery.of(context).padding.top -
                58.0,
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xff2b2b2b),
                          ),
                          right: BorderSide(
                            color: Color(0xff2b2b2b),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/icon/user.png",
                            width: 35.0,
                            height: 35.0,
                          ),
                          SizedBox(width: 15.0),
                          Text(
                            "User123",
                            style: _labelStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xff2b2b2b),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/icon/currency.png",
                            width: 35.0,
                            height: 35.0,
                          ),
                          SizedBox(width: 15.0),
                          Text(
                            "80,000.00",
                            style: _labelStyle,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 5.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xff2b2b2b),
                    ),
                  ),
                ),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  childAspectRatio: 0.8,
                  shrinkWrap: true,
                  children: <Widget>[
                    GameItem(
                      urlImage: "assets/icon/3.png",
                      name: "Sport",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/2.png",
                      name: "Game",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/6.png",
                      name: "Poker",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/6.png",
                      name: "Slot",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/5.png",
                      name: "Casino",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/4.png",
                      name: "SBO",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/8.png",
                      name: "A2",
                      itemOnTap: _itemClick,
                    ),
                    GameItem(
                      urlImage: "assets/icon/7.png",
                      name: "More",
                      itemOnTap: _itemClick,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GameItem extends StatelessWidget {
  final String urlImage;
  final String name;
  final Function(String) itemOnTap;
  GameItem({
    @required this.urlImage,
    @required this.name,
    this.itemOnTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => itemOnTap(name),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            urlImage,
            width: 60.0,
            height: 60.0,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
