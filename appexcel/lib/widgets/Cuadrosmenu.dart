import 'package:appexcel/Color.dart';
import 'package:appexcel/widgets/Botondos.dart';
import 'package:appexcel/widgets/Calificacion.dart';
import 'package:flutter/material.dart';

class Cuadros extends StatelessWidget {
  final String imagenes;
  final String titulo;
  final String descrip;
  final int calificacion;
  final Function pressdetalles;
  final Function pressvideos;

  const Cuadros({
    Key key,
    this.imagenes,
    this.titulo,
    this.descrip,
    this.calificacion,
    this.pressdetalles,
    this.pressvideos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 33,
                    color: KshadowColor,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            imagenes,
            width: 150,
          ),
          Positioned(
            top: 50,
            right: 10,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                  onPressed: () {},
                ),
                Menu(
                  puntaje: calificacion,
                ),
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(color: KBlackColor),
                        children: [
                          TextSpan(
                            text: titulo,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: descrip,
                            style: TextStyle(
                              color: KlightBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: pressdetalles,
                        child: Container(
                          width: 101,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text("Detalles"),
                        ),
                      ),
                      Expanded(
                        child: Botondos(
                          text: "Videos",
                          press: pressvideos,
                        ),
                      )
                    ],
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
