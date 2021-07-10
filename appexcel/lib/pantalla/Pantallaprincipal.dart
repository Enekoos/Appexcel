import 'dart:ui';
import 'package:appexcel/Color.dart';
import 'package:appexcel/pantalla/Pantalladisposicion.dart';
import 'package:appexcel/pantalla/Pantallainicio.dart';
import 'package:appexcel/pantalla/Pantallainsertar.dart';
import 'package:appexcel/pantalla/Pantallaonline.dart';
import 'package:appexcel/widgets/Botondos.dart';
import 'package:appexcel/widgets/Calificacion.dart';
import 'package:appexcel/widgets/Cuadrosmenu.dart';
import 'package:flutter/material.dart';

class Pantallaprincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/main.jpg"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * .1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.display1,
                        children: [
                          TextSpan(text: "Bienvenido a"),
                          TextSpan(
                            text: "\nAppexcel",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Cuadros(
                          imagenes: "assets/inicio.png",
                          titulo: "Herramienta Excel\n",
                          descrip: "Barra de Inicio",
                          calificacion: 1,
                          pressvideos: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Pantallainicio();
                                },
                              ),
                            );
                          },
                        ),
                        Cuadros(
                          imagenes: "assets/insertar.png",
                          titulo: "Herramienta Excel\n",
                          descrip: "Barra Insertar",
                          calificacion: 2,
                          pressvideos: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Pantallainsertar();
                                },
                              ),
                            );
                          },
                        ),
                        Cuadros(
                          imagenes: "assets/disposicion.png",
                          titulo: "Herramienta Excel\n",
                          descrip: "Barra Disposición de Página",
                          calificacion: 3,
                          pressvideos: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Pantalladisposicion();
                                },
                              ),
                            );
                          },
                        ),
                        Cuadros(
                          imagenes: "assets/formula.png",
                          titulo: "Herramienta Excel\n",
                          descrip: "Barra Fórmulas",
                          calificacion: 4,
                        ),
                        Cuadros(
                          imagenes: "assets/datos.png",
                          titulo: "Herramienta Excel\n",
                          descrip: "Barra Datos",
                          calificacion: 5,
                        ),
                        Cuadros(
                          imagenes: "assets/revisar.png",
                          titulo: "Herramienta Excel\n",
                          descrip: "Barra Revisar",
                          calificacion: 6,
                        ),
                        Cuadros(
                          imagenes: "assets/vista.png",
                          titulo: "Herramienta Excel\n",
                          descrip: "Barra Vista",
                          calificacion: 7,
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            children: [
                              TextSpan(text: "Excel "),
                              TextSpan(
                                text: "Online",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        excelonline(size, context),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            children: [
                              TextSpan(text: "Extras"),
                              TextSpan(
                                text: "...",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Pantallainicio();
                                },
                              ),
                            );
                          },
                          child: Container(
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(38.5),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 33,
                                  color: Color(0xFFD3D3D3).withOpacity(.84),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(38.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Un video de regalo",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  "No dejes de aprender",
                                                  style: TextStyle(
                                                    color: KlightBlackColor,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Text(
                                                    "",
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      color: KlightBlackColor,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                              ],
                                            ),
                                          ),
                                          Image.asset(
                                            "assets/extra.png",
                                            width: 80,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 7,
                                    width: size.width * .88,
                                    decoration: BoxDecoration(
                                      color: KBlackColor,
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container excelonline(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 200,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * 0.35,
              ),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Aprende sin limitaciones",
                    style: TextStyle(
                      fontSize: 13,
                      color: KlightBlackColor,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Google Sheets \nExcel Online",
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Accesibilidad desde tu celular",
                    style: TextStyle(
                      color: KlightBlackColor,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Menu(puntaje: 8),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Solo necesitas de un navegador Web para trabajar en estas herramientas",
                          textAlign: TextAlign.end,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: KlightBlackColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/linea.png",
              width: size.width * .37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: Botondos(
                text: "Videos",
                radio: 24,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Pantallaonline();
                      },
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
