import 'package:flutter/material.dart';
import 'package:neuroscan/temas/Styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnalisisCarga extends StatelessWidget{
  const AnalisisCarga({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF8524B9),
        image: const DecorationImage(
          image: AssetImage('assets/background.jpg'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Column(
        children: [
          //CABECERA
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/logo.png',
                      width: 50,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      "Analizando...",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'WindowsBold'
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          //ESPACIO PARA LA IMAGEN A ANALIZAR (SUBIDA)
          const SizedBox(height: 400),
          // BARRA GENERANDO INFORME
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Generando informe",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const SizedBox(width: 20), // espacio entre texto y barra
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white, // color del borde
                      width: 3, // grosor del borde (thickness)
                    ),
                    borderRadius: BorderRadius.circular(12), // esquinas redondeadas
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: 30, // grosor de la barra
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.transparent, // color de fondo
                        valueColor:  AlwaysStoppedAnimation<Color>(Colors.blueAccent), // color animado
                      ),
                    ),
                  )
              ),
            ],
          ),
          //DATOS ADICIONALES DE ANALISIS
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Icon(FontAwesomeIcons.circleCheck, color: Colors.white, size: 30, ),
                        Text("Analizando Imagen",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),)
                      ],
                    ),),
                  Expanded(
                      child: Column(
                        children: [
                          Icon(FontAwesomeIcons.circleCheck, color: Colors.white, size: 30, ),
                          Text("Detectando areas clave",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),)
                        ],
                      )
                  )
                ],
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Icon(FontAwesomeIcons.clock, color: Colors.white, size: 30, ),
                  Text("Realizando informe",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),)
                ],
              )
            ],
          ))
        ],
      )

    );
  }
}