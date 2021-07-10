import 'package:appexcel/Color.dart';
import 'package:flutter/material.dart';

class Pantallaonline extends StatelessWidget {
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
                        subtema: "Modo CMD & Click Icono",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Portapapeles",
                        numcapitulo: 2,
                        subtema: "Elementos: copiar, pegar, cortar",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Acceso a Excel",
                        numcapitulo: 4,
                        subtema: "Modo CMD & Click Icono",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Acceso a Excel",
                        numcapitulo: 5,
                        subtema: "Modo CMD & Click Icono",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Acceso a Excel",
                        numcapitulo: 6,
                        subtema: "Modo  & Click Icono",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Acceso a Excel",
                        numcapitulo: 7,
                        subtema: "Modo CMD & Click Icono",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Acceso a Excel",
                        numcapitulo: 8,
                        subtema: "Modo CMD & Click Icono",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Acceso a Excel",
                        numcapitulo: 9,
                        subtema: "Modo CMD & Click Icono",
                        nextvideo: () {},
                      ),
                      Botonext(
                        capitulo: "Acceso a Excel",
                        numcapitulo: 10,
                        subtema: "Modo CMD & Click Icono",
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
              Text("Tips",
                  style: Theme.of(context).textTheme.display1.copyWith(
                        fontWeight: FontWeight.bold,
                      )),
              SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Google Sheets es un programa de hoja de cálculo incluido como parte del paquete gratuito de editores de documentos de Google basado en la web.\n \nExcel online es una versión de la hoja de cálculo Microsoft que ha sido adaptada para trabajar desde un navegador de Internet.",
                            maxLines: 10,
                            style: TextStyle(
                              fontSize: 10,
                              color: KlightBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Image.asset(
          "assets/tips.png",
          height: 120,
        ),
      ],
    );
  }
}
