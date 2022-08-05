import 'package:flutter/material.dart';
import 'package:welcomepage/pages/enterstudentpage.dart';

class studentlogin extends StatefulWidget {
  const studentlogin({ Key? key }) : super(key: key);

  @override
  State<studentlogin> createState() => _studentloginState();
}

class _studentloginState extends State<studentlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
        padding: EdgeInsets.all(35.0),
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                    "https://tse2.mm.bing.net/th?id=OIP.HRQ8J1J4-zMxCEwi4vZ4KAHaFH&pid=Api&P=0"),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: "Student Email",
                  ),
                  ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password_outlined),
                    labelText: "Password",
                  ),
                  validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter a valid password!';
                  }
                  return null;
                },
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> enterstudentpage(),),);
                  },
                  padding: EdgeInsets.fromLTRB(70, 20, 70, 20),
                   shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(10),),
                  color: Colors.greenAccent,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    
                     Text("Don't have an account"),
                     MaterialButton(onPressed: (){},
                    child: Text("Create account",style: TextStyle(color: Colors.blue,),),),
                  ],
                ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}