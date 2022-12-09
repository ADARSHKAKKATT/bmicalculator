import 'package:flutter/material.dart';

void main() {
  runApp(const Bmi());
}

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
 double result=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: TextField(
                  controller: height,
                  decoration: InputDecoration(
                    icon: Icon(Icons.height),
                      label: Text("Height"),
                      border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: TextField(
                  controller: weight,
                  decoration: InputDecoration(
                    icon: Icon(Icons.line_weight),
                    label: Text("Weight"),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                bmi();
              },child: Text("Calculate"),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.indigo,
                ),


              ),
              SizedBox(height: 20,),
              Text(result==null ?"enter inputs correctly":"${result.toStringAsFixed(2)}"),
            ],
          ),
        ),
      ),
    );
  }
  void bmi(){

    double h=double.parse(height.text)/100;
    double w= double.parse(weight.text);
    double ans=w~/h*h;
    result=ans;
    setState(() {});

  }
}
