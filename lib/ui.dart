import 'package:flutter/material.dart';

class CalculatorUI extends StatefulWidget 
{
  const CalculatorUI({super.key});

  @override
  State<CalculatorUI> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> 
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar:AppBar(title: Center(child: Text('Mi calculadora IMC')),),body: Container(),);
  }
}