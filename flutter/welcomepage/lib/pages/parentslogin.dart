import 'package:flutter/material.dart';
import 'package:welcomepage/pages/enterparentspage.dart';

class parentslogin extends StatefulWidget {
  const parentslogin({ Key? key }) : super(key: key);

  @override
  State<parentslogin> createState() => _parentsloginState();
}

class _parentsloginState extends State<parentslogin> {
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
                    "https://www.sishugriha.in/images/parent_school_img6.png"),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: "Student Email",
                  ),
                  ),
                Padding(
                  padding: EdgeInsets.all(20.0),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> enterparentspage(),),);
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