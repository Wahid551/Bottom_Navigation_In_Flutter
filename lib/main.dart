import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Widget searchbar = Text(
    'Flutter Application',
    style: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
    ),
  );
  Icon cusicon = Icon(
    Icons.search,
    size: 30.0,
    color: Colors.red,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Flutter Application',
          style: TextStyle(color: Colors.white),
        ),
      ),

      //Bottom Navigation Bar

      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 60.0,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (this.cusicon.icon == Icons.search) {
                        this.cusicon = Icon(Icons.cancel);
                        this.searchbar = TextField(
                          textInputAction: TextInputAction.go,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search Text',
                          ),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        );
                      } else {
                        this.cusicon = Icon(Icons.search);
                        this.searchbar = Text(
                          'Flutter Application',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        );
                      }
                    });
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      cusicon,
                      Text('Search'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 60.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    searchbar,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
