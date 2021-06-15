import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          // ekrandi iwledigon joyi
          child: Column(
            // vertikal kanteynerlar
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                // yumalag'di iciga rasm background color yoki radisuini uzgartirsa boladi
                radius: 50.0,
                backgroundImage: AssetImage('images/rizo.jpg'),
              ),
              Text(
                'Muhammadrizo',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  // font urnatiw ucun. yaml faylda iwi bor
                  fontSize: 40.0,
                  // yozuvdi shrift kottaligi
                  color: Colors.white,
                  fontWeight: FontWeight
                      .bold, // buyam wu yozuvdi uzgariwi qalinro boladi
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  // shriftti qalinligi
                  letterSpacing: 2.5,
                  // harflar orasidagi masofa
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  // bu gorizantal ciziq ucun yani tagiga ciziw ucun
                  color: Colors.teal[100],
                ),
              ),
              Card(
                  // container bn bir xil prosta atrfi yumalag'ro boladi, kyin uzini default rangi oq boladi.
                  // uwancun backgroundcolor bermagamman. padding iwlatiw ucun Padding class dan foyadalaniladi
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                      // buni urniga Row qilib tipa gorizontal container qisayam boladi no bu imenna icon
                      // bn text ucun uwancun ListTile iwlatildi. leadingga icon yoz
                      // title ga text yoz
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+998911466454',
                        style: TextStyle(
                          color: Colors.teal[900],
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      ))),
              Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'muhammadrizo2019@mail.ru',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
