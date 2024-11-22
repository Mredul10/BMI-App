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

  var result = "";
  var bgColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your BMI',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'BMI',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text(
                      'Enter Your Weight (in KG)',
                      style: TextStyle(fontSize: 20),
                    ),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text(
                      'Enter Your Height (in Feet)',
                      style: TextStyle(fontSize: 20),
                    ),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                    label: Text(
                      'Enter Your Height (in Inch)',
                      style: TextStyle(fontSize: 20),
                    ),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    var wt = wtController.text.toString();
                    var ft = ftController.text.toString();
                    var inch = inController.text.toString();

                    if (wt != "" && ft != "" && inch != "") {
                      //BMI Calculation

                      var iwt = int.parse(wt);
                      var ift = int.parse(ft);
                      var iinch = int.parse(inch);

                      var tInch = (ift * 12) + iinch;

                      var tCm = tInch * 2.54;
                      var tM = tCm / 100;

                      var bmi = iwt / (tM * tM);

                      var msg = "";
                     

                      if (bmi > 25) {
                        msg = "You are OverWeight";
                        bgColor = Colors.red.shade300;
                      } else if (bmi < 18.5) {
                        msg = "You are UnderWeight";
                        bgColor = Colors.yellow.shade300;
                      } else {
                        msg = "You are Healthy";
                        bgColor = Colors.green;
                      }

                      setState(() {
                        result = "$msg \n BMI is : ${bmi.toStringAsFixed(2)}";
                      });
                    } else {
                      setState(() {
                        result = "Please fill all the required blanks!!";
                      });
                    }
                  },
                  child: Text('Calculate',style: TextStyle(fontSize: 15),),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  result,
                  style: TextStyle(fontSize: 19),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

 