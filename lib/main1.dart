import 'package:flutter/material.dart';
import './line_chart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A Line Chart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'A line Chart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _buildCard(String assetUrl, String title, int index) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: deviceHeight * 0.45,
      child: ClipRRect( //to clip the corners round of the image/ anything on it.
        borderRadius: BorderRadius.circular(20.0), //of the image/ anything
        child: InkWell( //makes the whole widget inside it clickable
          onTap: () {
            if (index == 1) {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => LineChart()
                )
              );
            } 
          },
          child: Stack(
            children: <Widget>[
              Container(
                height: deviceHeight * 0.3,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: deviceHeight * 0.125),
                alignment: Alignment.center,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 29
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 25,),
            _buildCard('assets/images/linechart.png', 'Line-Chart Example', 1),
          ],
        ),
      ),
    );
  }
}