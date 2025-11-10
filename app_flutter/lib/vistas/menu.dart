import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class menu extends StatefulWidget {
  const menu ({super.key});

  @override
  State<menu> createState() => _MenuState();
}

class _MenuState extends State<menu>{
  File? imagen;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context){
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
          // * (ocupa el espacio sobrante de forma proporcional)
          Expanded(
            flex: 1, // equivale a "*"
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/logo_neuroscan.png'),
                ),
              ),
              margin: EdgeInsets.all(60),
            ),
          ),

          // 2* (el doble del anterior)
          Expanded(
            flex: 2, // equivale a "2*"
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF1FACE3), Color(0xFF726BD5)], // de morado a fucsia
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),// bordes redondeados
                    ),
                    width: double.infinity,
                    height: 70,
                    child: ElevatedButton(onPressed: () async{
                      FilePickerResult? result = await FilePicker.platform.pickFiles();

                      if (result != null){

                      }
                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      child:Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const[
                          Text("Subir Radiografia",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25
                            ),),
                          SizedBox(width: 10),
                          Icon(FontAwesomeIcons.upload, color: Colors.white, size: 30,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox( height: 40),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF1FACE3), Color(0xFF726BD5)], // de morado a fucsia
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(40), // bordes redondeados
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    width: double.infinity,
                    height: 70,
                    child: ElevatedButton(onPressed: () {

                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      child:Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const[
                          Text("Tomar foto",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(FontAwesomeIcons.camera, color: Colors.white, size: 30, ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}