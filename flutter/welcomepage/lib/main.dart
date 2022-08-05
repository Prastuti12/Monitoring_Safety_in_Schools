import 'package:flutter/material.dart';
import 'package:welcomepage/pages/mainpage.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: welcomepage(),
      color: Colors.white30,
      debugShowCheckedModeBanner: false,
      
    );
  }
}
class welcomepage extends StatefulWidget {
  const welcomepage({ Key? key }) : super(key: key);

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Welcome to",style: TextStyle(fontSize: 70,fontStyle: FontStyle.italic,color: Colors.deepOrangeAccent),),
              Text("DOSEL",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,color: Colors.green),),
              SizedBox(
                height: 30,
              ),
              Text("Department of School Education & Literacy",style: TextStyle(color:Colors.blueAccent,fontSize: 20),),
              Padding(padding: EdgeInsets.all(10)),
              Image.network("https://cdn.pixabay.com/photo/2014/03/24/17/15/school-295210_960_720.png"),
              Padding(padding: EdgeInsets.fromLTRB(90, 90, 90,60)),
             RawMaterialButton(
  onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> mainpage()));
  },
  elevation: 7.7,
  fillColor: Colors.white,
  child: Icon(
    Icons.arrow_forward,
    size: 35.0,
  ),
  padding: EdgeInsets.all(10.0),
  shape: CircleBorder(),
  
)
            ],
          ),
        ),
      ),
    );
  }
}