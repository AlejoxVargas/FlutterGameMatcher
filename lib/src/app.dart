import 'package:flutter/material.dart';

class MyAppLogin extends StatefulWidget {
  @override
  State<MyAppLogin> createState() => _MyAppLoginState();
}

class _MyAppLoginState extends State<MyAppLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Color de fondo, CAMBIARLO
      backgroundColor: Color.fromARGB(255, 30, 33, 54), 
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 90.0),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('img/logoNakama.png'),
                ),
                Text("Iniciar sesión",
                    style: TextStyle(
                      fontFamily: "Silkscreen",
                      fontSize: 20.0,
                      color: Color.fromARGB(100, 255, 255, 255),
                    )),
                SizedBox(
                  width: 160.0,
                  height: 15.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),

                //Caja de texto correo electronico
                TextField(
                  enableInteractiveSelection: false,
                  autofocus: true,
                  textCapitalization: TextCapitalization.none,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Correo electronico",
                      labelText: "Correo electronico",
                       hintStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 15.0,
                      ),
                      suffixIcon: Icon(Icons.alternate_email), 
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),

                //Divisor entre cajas de texto correo y contraseña
                Divider(
                  height: 20.0,
                  color: Colors.transparent,
                ),

                //Caja de texto contraseña
                TextField(
                  enableInteractiveSelection: false,
                  obscureText: true,
                  autofocus: true,
                  textCapitalization: TextCapitalization.characters,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Contraseña",
                      labelText: "Contraseña",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 15.0,
                      ),
                      suffixIcon: Icon(Icons.lock_outline,),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),

                Divider(
                  height: 30.0,
                  color: Colors.transparent,
                ),

                SizedBox(
                  width: double.infinity,
                  child: FloatingActionButton(
                    onPressed: (){},
                    child: Text("Iniciar sesion",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      fontFamily: "Outfit"
                    ),),
                    backgroundColor: Color.fromARGB(255, 237, 100, 141),
                  ),
                )
              ],
            )
          ]),
    );
  }
}