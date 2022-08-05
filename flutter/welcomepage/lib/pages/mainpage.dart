import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:welcomepage/pages/parentslogin.dart';
import 'package:welcomepage/pages/studentlogin.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  List<String> carouselImages = [
    "https://st3.depositphotos.com/1967477/19585/v/950/depositphotos_195857870-stock-illustration-cartoon-group-elementary-school-kids.jpg"
        "https://news-media.stanford.edu/wp-content/uploads/2017/12/04151510/schools_getty.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                autoPlay: true,
                viewportFraction: 0.9,
              ),
              items: carouselImages.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Image.network(
                        i,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => studentlogin(),
                      ),
                    );
                  },
                  padding: EdgeInsets.fromLTRB(70, 20, 150, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.greenAccent,
                  child: Text(
                    "Student Login",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => parentslogin(),
                      ),
                    );
                  },
                  padding: EdgeInsets.fromLTRB(70, 20, 150, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.greenAccent,
                  child: Text(
                    "Parents Login",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.fromLTRB(70, 20, 150, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.greenAccent,
                  child: Text(
                    "Teacher Login",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.fromLTRB(70, 20, 150, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.greenAccent,
                  child: Text(
                    "School Login",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: (10),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Expanded(
                child: Text(
                  "A step toward good education",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      color: Colors.blue,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
