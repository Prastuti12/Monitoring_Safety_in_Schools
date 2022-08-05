import 'package:flutter/material.dart';
import 'package:welcomepage/main.dart';

void main(){
  runApp(MyApp());
}

class enterstudentpage extends StatefulWidget {
  const enterstudentpage({ Key? key }) : super(key: key);

  @override
  State<enterstudentpage> createState() => _enterstudentpageState();
}

class _enterstudentpageState extends State<enterstudentpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("DOSEL"),
      
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Anmol Sharma"),
              accountEmail: Text("anmolsharma@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const firstpage()),
                // );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
       );
    
  }
}