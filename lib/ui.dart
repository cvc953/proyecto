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
    return Scaffold(
      appBar:AppBar
      (
        title: Center(child: Text('Mi calculadora IMC')),
      ),

      body: SingleChildScrollView
      (
        child:Column
        (
          children: 
          [
            TextFormField
            (

              keyboardType: TextInputType.numberWithOptions(),

              validator: (value) 
              {
                if (value!.isEmpty) 
                {
                  return 'Escribe tu peso';
                }
                  return null;
              },

              decoration: InputDecoration
              (
                label: Text ('ingrese su peso'),
                
              )
            ),

            TextFormField
            (
              keyboardType: TextInputType.numberWithOptions(),
              validator: (value)
              {
                if (value!.isEmpty)
                {
                  return 'Escribe tu estatura';
                }
                  return null;
              },

              decoration: InputDecoration
              (
                label: Text('ingrese su estatura')
              )
            ),

            ElevatedButton(onPressed: , child: Text('calcular'))

          ],
        )
      ),
    ); 
  }

  void calcular()
  {

  }
  
}