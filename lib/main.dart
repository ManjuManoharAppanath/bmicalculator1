import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController h=TextEditingController();
  TextEditingController w=TextEditingController();
  double r=0;
  void cal()
  {
     double height=double.parse(h.text)/100;
     double weight=double.parse(w.text);
     double result=weight/(height*height);
     r=result;
     setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
      Scaffold
        (appBar: AppBar(title: Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(controller: h,
                decoration: InputDecoration(border: OutlineInputBorder(),
                label: Text('Height'),
                icon: Icon(Icons.height),
              ),
                ),
              SizedBox(height: 20,),
              TextField(controller: w,
                decoration: InputDecoration(border: OutlineInputBorder(),
              label: Text('Weight'),
                icon: Icon(Icons.line_weight),
              ),),
              TextButton(onPressed: (){
                cal();
              }, child: Text('calculate'),
              ),
              Text('$r'),
            ],
          ),
        ),
      ),
    );
  }
}
