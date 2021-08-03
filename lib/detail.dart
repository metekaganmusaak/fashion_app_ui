import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  var imgPath;
  Detail({this.imgPath});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      widget.imgPath
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: Material(
              elevation: 8.0,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width-30,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.85)
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage("assets/person1.jpg"),
                                fit: BoxFit.cover,
                              ),

                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Curtain's of Hell",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              "Galib Muzaffer ACAR",
                              style: TextStyle(
                                color: Colors.grey.shade300,
                                fontWeight: FontWeight.bold,
                                fontSize: 24.0
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Text(
                            "\$19.99",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: FlatButton(
                            onPressed: () => {},
                            color: Colors.green.shade500,
                            child: Text(
                              "BUY",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
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
}
