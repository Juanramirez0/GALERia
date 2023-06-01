import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/data/images_data.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/image_page.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(183, 12, 11, 15),
        scaffoldBackgroundColor: Color.fromARGB(148, 4, 92, 163),
        textTheme: Typography.blackCupertino,
      ),
      title: "Mi App",
      initialRoute: '/',
      routes: {
        '/': (context) => Inicio(),
        '/detalle': (context) => Detalle(),
        '/configuracion': (context) => Configuracion(),
        '/galeria': (context) => Galeria(),
      },
    );
  }
}

class Inicio extends StatelessWidget {
  Inicio({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("                    OSAKA PARDOS                          "),
        backgroundColor: Color.fromARGB(255, 0, 255, 0),
      ),
      body: Container(
        color: Color.fromARGB(255, 224, 224, 224),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 499,
            ),
            Text(
              "BIENVENIDO A OSAKA ",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/detalle'),
              child: Text(
                'Ver detalles',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/galeria'),
              child: Text(
                'galeria',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/configuracion'),
              child: Text(
                'Configuración ⚙️',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Detalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle"),
        backgroundColor: Color.fromARGB(255, 4, 205, 255),
        shadowColor: Color.fromARGB(0, 245, 245, 245),
      ),
      body: Column(children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.50,
          child: Text(
            ' Osaka Pardo es un restaurante de cocina nikkei que se encuentra en Lima, Perú. El restaurante se encuentra en la dirección AV PARDO Y ALIAGA 660, SAN ISIDRO- contamos con diferentes platos descuentos y buenos precios para que el cliente se cienta comodo , ademas de un ambiente agradable ',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24, color: Color.fromRGBO(255, 255, 255, 0.902)),
          ),
        )
      ]),
    );
  }
}

class Configuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuración"),
        backgroundColor: Color.fromARGB(255, 223, 223, 223),
      ),
      body: Center(
        child: Text(
          "Pantalla de configuración",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomePage());
  }
}
