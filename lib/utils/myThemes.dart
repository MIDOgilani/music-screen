import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class myThemes extends ChangeNotifier {
  
  static bool isDark = true;
  static var lightFontTheme = isDark? Color.fromRGBO(255, 244, 230, 1) : Color.fromRGBO(60, 47, 47, 1) ;
  static var darkFontTheme = isDark? Color.fromRGBO(60, 47, 47, 1) : Color.fromRGBO(255, 244, 230, 1) ;
  static const transparent = Colors.transparent;

  static Gradient myLinearGradient = isDark? const LinearGradient(
    begin: Alignment(-0.3985507161821342, -0.5959821248576194),
    end: Alignment(0.514492649131197, 0.6450892625741595),
    stops: [0.0, 1.0],
    colors: [Color.fromARGB(255, 60, 47, 47), Color.fromARGB(255, 24, 21, 21)],
  ) : const LinearGradient(
    begin: Alignment(-0.3985507161821342, -0.5959821248576194),
    end: Alignment(0.514492649131197, 0.6450892625741595),
    stops: [0.0, 1.0],
    colors: [Color.fromRGBO(255, 244, 230, 1), Color.fromARGB(255, 253, 251, 247)],
  );

  static returnHeight(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return height;
  }

  static returnWidth(BuildContext context) {
    final width = MediaQuery.of(context).size.height;
    return width;
  }
}

Widget headingTitle(String text, FontWeight w, double size) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      '''$text''',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: TextStyle(
        height: 1.171875,
        fontSize: size,
        fontFamily: 'Inter',
        fontWeight: w,
        color: Color.fromARGB(255, 255, 244, 230),

        /* letterSpacing: 0.0, */
      ),
    ),
  );
}
