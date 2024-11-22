import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your BMI'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Bmi', style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),),
          
              SizedBox(height: 20,),
          
          
              TextField(
                controller: wtController,
                decoration: InputDecoration(
                label: Text('Enter Your Weight (in KG)'),
                prefixIcon: Icon(Icons.line_weight),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10,),
          
              TextField(
                controller: ftController,
                decoration: InputDecoration(
                label: Text('Enter Your Height (in Feet)'),
                prefixIcon: Icon(Icons.height),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10,),
          
              TextField(
                controller: inController,
                decoration: InputDecoration(
                label: Text('Enter Your Height (in Inch)'),
                prefixIcon: Icon(Icons.height),
                ),
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 20,),

              ElevatedButton(onPressed: (){}, child: Text('Calculate'),),


              Text(''),
          
          
            ],
          ),
        ),
      ),
    );
  }
}