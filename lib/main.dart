import 'package:calculadora_dart/comp/CustomAppBarX.dart';
import 'package:calculadora_dart/theme/AppTheme.dart';
import 'package:flutter/material.dart';
import './comp/CalcButton.dart';
import 'dart:math';

void main() => runApp(CalcApp());

class CalcApp extends StatefulWidget {
  const CalcApp({super.key});
  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp> {
  String valorAnt = '';
  String operador = '';
  TextEditingController _controller = new TextEditingController();
  void numClick(String text) {
    setState(() => _controller.text += text);
    print(_controller);
  }

  void clear(String text) {
    setState(() {
      _controller.text = '';
    });
  }

  void opeClick(String text) {
    setState(() {
      valorAnt = _controller.text;
      operador = text;
      _controller.text = '';
    });
  }

  void raizClick(String text) {
    setState(() {
      _controller.text = sqrt(int.parse(_controller.text)).toString();
    });
  }

  void piClick(String text) {
    setState(() {
      _controller.text = pi.toString();
    });
  }

  void potencia2Click(String text) {
    setState(() {
      double num = double.parse(_controller.text);
      _controller.text = (pow(num, 2)).toString();
    });
  }

  void potencianClick(String text) {
    setState(() {
      valorAnt = _controller.text;
      operador = "^";
      _controller.text = '';
    });
  }

  void accion() {
    setState(() {
      print("");
    });
  }

  void resultOperacion(String text) {
    setState(() {
      double num1 = double.parse(valorAnt);
      double num2 = double.parse(_controller.text);

      switch (operador) {
        case '+':
          _controller.text = (num1 + num2).toString();
          break;
        case '-':
          _controller.text = (num1 - num2).toString();
          break;
        case '*':
          _controller.text = (num1 * num2).toString();
          break;
        case '/':
          _controller.text = (num1 / num2).toString();
          break;
        case '^':
          _controller.text = (pow(num1, num2)).toString();
          break;
        default:
          break;
      }

      valorAnt = _controller.text;
      operador = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    List<List> labelList = [
      ["√", "π", "x²", "xⁿ"],
      ["AC", "C", "%", "/"],
      ["7", "8", "9", "*"],
      ["4", "5", "6", "-"],
      ["1", "2", "3", "+"],
      [".", "0", "00", "="],
    ];
    List<List> funx = [
      [raizClick, piClick, potencia2Click, potencianClick],
      [clear, clear, opeClick, opeClick],
      [numClick, numClick, numClick, opeClick],
      [numClick, numClick, numClick, opeClick],
      [numClick, numClick, numClick, opeClick],
      [numClick, numClick, numClick, resultOperacion]
    ];
    AppTheme.colorX = Colors.blue;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      themeMode: AppTheme.useLightMode ? ThemeMode.light : ThemeMode.dark,
      theme: AppTheme.themeDataLight, //Fin Agregado
      darkTheme: AppTheme.themeDataDark,
      home: Scaffold(
        appBar: CustomAppBar(accionx: accion as Function),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                /*color:
                Theme.of(context).colorScheme.surfaceVariant,*/
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  textAlign: TextAlign.end,
                  controller: _controller,
                ),
              ),
              SizedBox(height: 20),
              ...List.generate(
                  labelList.length,
                  (index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ...List.generate(
                            labelList[index].length,
                            (indexx) => CalcButton(
                              text: labelList[index][indexx],
                              callback: funx[index][indexx] as Function,
                            ),
                          ),
                        ],
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
