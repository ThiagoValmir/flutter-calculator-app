import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/widgets/calculator_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int firstNum = 0;
  int secondNum = 0;
  String history = "";
  String textToDisplay = "";
  String res = "";
  String operation = "";

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == "C") {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = "";
    } else if (btnVal == "AC") {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = "";
      history = "";
    } else if (btnVal == "+/-"){
      if (textToDisplay.isNotEmpty && textToDisplay[0] != "-"){
        res = "-$textToDisplay";
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == "<") {
      res = textToDisplay.isNotEmpty
          ? textToDisplay.substring(0, textToDisplay.length - 1)
          : "";
    } else if (btnVal == "+" ||
        btnVal == "-" ||
        btnVal == "x" ||
        btnVal == "/") {
      firstNum = int.parse(textToDisplay);
      res = "";
      operation = btnVal;
    } else if (btnVal == "=") {
      secondNum = int.parse(textToDisplay);
      if (operation == "+") {
        res = (firstNum + secondNum).toString();
        history = "$firstNum $operation $secondNum";
      }
      if (operation == "-") {
        res = (firstNum - secondNum).toString();
        history = "$firstNum $operation $secondNum";
      }
      if (operation == "x") {
        res = (firstNum * secondNum).toString();
        history = "$firstNum $operation $secondNum";
      }
      if (operation == "/") {
        res = (firstNum / secondNum).toString();
        history = "$firstNum $operation $secondNum";
      }
    } else {
      res = textToDisplay + btnVal;
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculator',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            centerTitle: true,
            title: const Text(
              "Flutter Calculator",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Color(0xFF28527a),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Text(
                      history,
                      style: TextStyle(fontSize: 24, color: Color(0x66FFFFFF)),
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      textToDisplay,
                      style: TextStyle(fontSize: 48, color: Colors.white),
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: "AC",
                      fillColor: 0xFF8ac4d0,
                      textSize: 20,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "C",
                      fillColor: 0xFF8ac4d0,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "<",
                      fillColor: 0xFFf4d160,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "/",
                      fillColor: 0xFFf4d160,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: "9",
                      fillColor: 0xFF8ac4d0,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "8",
                      fillColor: 0xFF8ac4d0,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "7",
                      fillColor: 0xFF8ac4d0,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "x",
                      fillColor: 0xFFf4d160,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: "6",
                      fillColor: 0xFF8ac4d0,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "5",
                      fillColor: 0xFF8ac4d0,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "4",
                      fillColor: 0xFF8ac4d0,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "-",
                      fillColor: 0xFFf4d160,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: "3",
                      fillColor: 0xFF8ac4d0,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "2",
                      fillColor: 0xFF8ac4d0,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "1",
                      fillColor: 0xFF8ac4d0,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "+",
                      fillColor: 0xFFf4d160,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: "+/-",
                      fillColor: 0xFF8ac4d0,
                      textSize: 22,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "0",
                      fillColor: 0xFF8ac4d0,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "00",
                      fillColor: 0xFF8ac4d0,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "=",
                      fillColor: 0xFFf4d160,
                      textSize: 24,
                      textColor: 0xFF000000,
                      callBack: btnOnClick,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
