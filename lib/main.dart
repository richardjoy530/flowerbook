import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  get inputType => null;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'images/path.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Flowers',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'School',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffffff).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 200,
                        padding: EdgeInsets.only(left: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.white),
                              hintText: 'Search',
                              border: InputBorder.none),
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.photo_camera,
                            color: Colors.white,
                          ),
                          onPressed: null)
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(50),
                          ),
                          child: Container(
                            height: 170,
                            color: Colors.grey,
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  child: Image.asset(
                                    'images/monstra.jpg',
                                    width: 400,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: IconButton(
                                      icon: Icon(Icons.favorite_border,
                                          color: Colors.black),
                                      onPressed: null),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 15, top: 10),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Monstera',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            CircleAvatar(
                                              radius: 10,
                                              backgroundImage: AssetImage(
                                                  'images/avatar.jpeg'),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left:8.0),
                                              child: Text('by Kate B.',style: TextStyle(fontWeight: FontWeight.w600),),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(50),
                          ),
                          child: Container(
                            height: 170,
                            color: Colors.grey,
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  child: Image.asset(
                                    'images/suculents.jpg',
                                    width: 400,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: IconButton(
                                      icon: Icon(Icons.favorite,
                                          color: Colors.red),
                                      onPressed: null),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 15, top: 10),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Suculents',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            CircleAvatar(
                                              radius: 10,
                                              backgroundImage: AssetImage(
                                                  'images/women2.jpg'),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left:8.0),
                                              child: Text('by Amanda B.',style: TextStyle(fontWeight: FontWeight.w600),),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(50),
                          ),
                          child: Container(
                            height: 170,
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  child: Image.asset(
                                    'images/aloevera.jpg',
                                    width: 400,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: IconButton(
                                      icon: Icon(Icons.favorite_border,
                                          color: Colors.black),
                                      onPressed: null),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 15, top: 10),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Aloe Vera',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            CircleAvatar(
                                              radius: 10,
                                              backgroundImage: AssetImage(
                                                  'images/avatar.jpeg'),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left:8.0),
                                              child: Text('by Kate B.',style: TextStyle(fontWeight: FontWeight.w600),),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
