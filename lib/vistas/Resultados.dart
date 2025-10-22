import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neuroscan/temas/Styles.dart';


class Resultados extends StatelessWidget{
  const Resultados({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF8524B9),
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // centra el contenido
          children: const [
            Text(
              "Resultados de Análisis",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Raleway-VariableFont',
                  fontWeight: FontWeight.bold
              ),
            ),
            Expanded(
              flex: 1,
              child: ColoredBox(
                color: Colors.white,
                child: Center(child: Text("Imagen *"))
                ,
              ),
            ),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _opcion(String texto) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF8524B9), // violeta
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 6,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: Center(
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}