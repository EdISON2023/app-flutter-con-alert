import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Fiel Focus hi ',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  void showAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Dialog'),
          content: Text('Esta es una alerta'),
          actions: [
            TextButton(
              child: Text('cerrar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void exitApp() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP FLUTTER'),
      
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 250.0,
              width: 350.0,
              child: Image.asset('assets/moto.jpg'),
            ),
            SizedBox(height: 16.0),
            Container(
              alignment: Alignment.center,
              child: Text(
                'MOTOS',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Las motos son vehículos de dos ruedas que se utilizan comúnmente para el transporte personal. Son ágiles, rápidas y ofrecen una experiencia emocionante. Las motos son populares entre los entusiastas de las dos ruedas y son ampliamente utilizadas en todo el mundo.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: exitApp,
                  tooltip: 'Exit App',
                  child: Icon(Icons.exit_to_app),
                ),
                SizedBox(width: 16.0),
                FloatingActionButton(
                  onPressed: showAlert,
                  tooltip: 'Show Alert',
                  child: Icon(Icons.warning),
                   backgroundColor: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
