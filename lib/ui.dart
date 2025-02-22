import 'package:flutter/material.dart';

class CalculatorUI extends StatefulWidget 
{
  const CalculatorUI({super.key});

  @override
  State<CalculatorUI> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> 
{
  final peso = TextEditingController();
  final estatura = TextEditingController();

  String pso = '0';
  String est = '0';

  double resultado = 0;
  
  String respuesta = '';
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar:AppBar
      (
        title: Center(child: Text('calculadora IMC')),
      ),

      body: Center
      (
        child:Column
        (
          children: 
          [
            Padding(padding: EdgeInsets.symmetric(vertical: 50.0),),
            TextFormField
            (
              controller: peso,

              keyboardType: TextInputType.number,

              decoration: InputDecoration
              (
                border: OutlineInputBorder(),
                label: Text('ingrese su peso en kg'),
              )
            ),

            Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
            
            TextFormField
            (
              controller: estatura,

              keyboardType: TextInputType.number,
              
              decoration: InputDecoration
              (
                border: OutlineInputBorder(),
                label: Text('ingrese su estatura en cm'),
              )
            ),

            Padding(padding: EdgeInsets.symmetric(vertical: 50.0)),

            ElevatedButton(onPressed: calcular, child: Text('calcular')),
            if(respuesta.isNotEmpty)
              Text('su IMC es: '),
              Text(respuesta),
          ],
        ),
      ),
    ); 
  }

  void calcular()
  {
    setState(() 
    {
        
        pso = peso.text;
        est = estatura.text;
        
      if(pso.isNotEmpty && est.isNotEmpty)
      {
        double pes = double.parse(pso);
        double esta = double.parse(est);

        if(pes > 0 && esta > 0)
        {
          resultado = (pes/((esta/100)*(esta/100)));
          respuesta = resultado.toStringAsFixed(2);
        }
        else
        {
          respuesta =  'los datos ingresados no son validos';
        }

      }
      else
      {
        respuesta = 'por favor ingrese todos los datos';
      }


      

    //peso.text = '';
    //estatura.text = '';
    }
  );
  }
}
