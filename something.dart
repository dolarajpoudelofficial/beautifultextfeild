import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Simple Interest Calc",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _p;
  TextEditingController _t;
  TextEditingController _r;

  String p;
  String t;
  String r;

  double result = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        backgroundColor: mainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView(children: [
            SizedBox(
              height: 25,
            ),
            TextField(
              onChanged: (val){
              setState(() {
                p = val;
              });
              },
              controller: _p,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  hintText: "Enter Principal"),
                  keyboardType: TextInputType.number,
            ),
             SizedBox(
              height: 8,
            ),
             TextField(
                    onChanged: (val){
              setState(() {
                t = val;
              });
              },
              controller: _t,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  hintText: "Enter Time"),
                  keyboardType: TextInputType.number,
            ),
              SizedBox(
              height: 8,
            ),
             TextField(
                    onChanged: (val){
              setState(() {
                r = val;
              });
              },
              controller: _r,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  hintText: "Enter Rate"),
                  keyboardType: TextInputType.number,
            ),
             SizedBox(
              height: 8,
            ),

            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                 side: BorderSide(color: Colors.red)
              ),
              height: 50,
              child: Text("Calcuate", style: TextStyle(color: Colors.white, fontSize: 21),),
              color: mainColor,
              onPressed: (){
                setState(() {
                  result = double.parse(p) *  double.parse(t) *  double.parse(r)/100;
                });
              },
            ),
            Center(child: Text("The result is "+result.toString(),style: TextStyle(fontSize: 25),))
          ]),
        ),
      ),
    );
  }
}

const Color mainColor = Color(0xFFE21717);
