import 'package:appexcel/Color.dart';
import 'package:appexcel/videosclass/Iniciocap1.dart';
import 'package:flutter/material.dart';

class Pantallainicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/bg.png"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: size.height * .1),
                        Portadas(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 30),
                  child: Column(
                    children: <Widget>[
                      Botonext(
                        capitulo: "Acceso a Excel",
                        numcapitulo: 1,
                        subtema: "Cuadro de díalogo ejecutar y Click Icono.",
                        nextvideo: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Iniciocap1();
                              },
                            ),
                          );
                        },
                      ),
                      Botonext(
                        capitulo: "Portapapeles",
                        numcapitulo: 2,
                        subtema:
                            "Elementos Copiar, Pegar, Cortar,\n y Copiar Formato.",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Fuente",
                        numcapitulo: 3,
                        subtema: "Tipos de Fuentes, Tamaño y Estilos.",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Fuente - Bordes",
                        numcapitulo: 4,
                        subtema: "Borde Inferior.",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Fuente - Color",
                        numcapitulo: 5,
                        subtema: "Color de relleno y Color de fuente.",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Alineación",
                        numcapitulo: 6,
                        subtema:
                            "Alineación de texto, Alineación de contenido,\n Orientación, Sangria, Ajustar texto, Combinar\n y centrar.",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Números",
                        numcapitulo: 7,
                        subtema:
                            "Formatos de numeros, Estilos,\n Aumento y Disminución de decimales.",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Estilos",
                        numcapitulo: 8,
                        subtema:
                            "Formato condicional, Formato como tabla \n  y Estilo de celdas.",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Celdas",
                        numcapitulo: 9,
                        subtema: "Eliminar, Insertar y Formato.",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Edición",
                        numcapitulo: 10,
                        subtema: "Autosuma, Rellenar y Borrar",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Edición",
                        numcapitulo: 11,
                        subtema: "Ordenar y Filtrar, Buscar y seleccionar",
                        nextvideo: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Botonext extends StatelessWidget {
  final String capitulo;
  final String subtema;
  final int numcapitulo;
  final Function nextvideo;

  const Botonext({
    Key key,
    @required this.capitulo,
    this.subtema,
    this.numcapitulo,
    this.nextvideo,
    this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
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
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Capitulo $numcapitulo : $capitulo\n",
                  style: TextStyle(
                    fontSize: 16,
                    color: KBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: subtema,
                  style: TextStyle(
                    color: KlightBlackColor,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 40,
            ),
            onPressed: nextvideo,
          )
        ],
      ),
    );
  }
}

class Portadas extends StatelessWidget {
  const Portadas({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Barra de",
                  style: Theme.of(context).textTheme.display1.copyWith(
                        fontWeight: FontWeight.bold,
                      )),
              Text(
                "Inicio",
                style: Theme.of(context).textTheme.display1.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            "Forma parte de la cinta de opciones de Excel y contiene los botones de comando que normalmente se utilizan para crear, dar formato a texto, alinear texto, y más.",
                            maxLines: 7,
                            style: TextStyle(
                              fontSize: 10,
                              color: KlightBlackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Image.asset(
          "assets/iniciodet.png",
          height: 120,
        ),
      ],
    );
  }
}
