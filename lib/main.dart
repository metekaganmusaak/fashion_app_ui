import 'package:flutter/material.dart';

import 'detail.dart';

void main() => runApp(FashionApp());

class FashionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      bottomNavigationBar: Material(
        color: Colors.black,
        child: TabBar(
          indicatorColor: Colors.white,
          indicatorWeight: 5,
          unselectedLabelColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          controller: tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text(
          "Fotografers.",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () => {},
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 5),
            color: Colors.grey.shade900,
            height: 103,
            width: double.infinity,
            alignment: Alignment.center,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                listElements("assets/person1.jpg"),
                SizedBox(width: 15.0),
                listElements("assets/person2.jpg"),
                SizedBox(width: 15.0),
                listElements("assets/person3.jpg"),
                SizedBox(width: 15.0),
                listElements("assets/person4.jpg"),
                SizedBox(width: 15.0),
                listElements("assets/person5.jpg"),
                SizedBox(width: 15.0),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Material(
              color: Colors.black,
              child: Container(
                width: double.infinity,
                height: 460,
                padding: EdgeInsets.all(14.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage("assets/person1.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Galib Muzaffer ACAR",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Analog Camera Photographer",
                                style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Galib Muzaffer ACAR as known as 'The Tilt Man' is a professional photographer in Turkey."
                      "He likes every creature because of the Creator. His philosophy is PUT that is an acronym "
                      "that stands by Pick Up and Throw. His biggest fear is falling in love with an ignorant person.",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detail(
                                    imgPath: "assets/person1_image1.jpg")));
                          },
                          child: Hero(
                            tag: "assets/person1_image1.jpg",
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/person1_image1.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detail(
                                        imgPath: "assets/person1_image2.jpg")));
                              },
                              child: Hero(
                                tag: "assets/person1_image2.jpg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/person1_image2.jpg"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detail(
                                        imgPath: "assets/person1_image3.jpg")));
                              },
                              child: Hero(
                                tag: "assets/person1_image3.jpg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/person1_image3.jpg"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade300,
                          ),
                          child: Center(
                            child: Text(
                              "#space",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 11.5,
                        ),
                        Container(
                          height: 25,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade300
                          ),
                          child: Center(
                            child: Text(
                              "#longexposure",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 11.5,
                        ),
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade300,
                          ),
                          child: Center(
                            child: Text(
                              "#analog",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.save_alt,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "19.9k",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "3.5k",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 196,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "3.5k",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  listElements(String personImagePath) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(personImagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 50,
              top: 50,
              child: Icon(
                Icons.add_circle,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
