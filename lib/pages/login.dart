import 'package:firstfluttercs/pages/bottomNavigationBar.dart';
import 'package:firstfluttercs/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//           primarySwatch: Colors.green,
//           primaryColor: Colors.red,
//           accentColor: Colors.orange,
//           hintColor: Colors.green),
//       home: MyHomePage(),
//     );
//   }
// }

class PinCode extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PinCode> {
  bool _onEditing = true;
  late String _code;
  final String _pin = '1234';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login Mala')),
      ),
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Enter your PIN',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          VerificationCode(
            textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
            keyboardType: TextInputType.number,
            underlineColor: Colors
                .green, // If this is null it will use primaryColor: Colors.red from Theme
            length: 4,
            cursorColor:
                Colors.blue, // If this is null it will default to the ambient
            // clearAll is NOT required, you can delete it
            // takes any widget, so you can implement your design
            clearAll: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'clear all',
                style: TextStyle(
                    fontSize: 14.0,
                    decoration: TextDecoration.underline,
                    color: Colors.blue[700]),
              ),
            ),
            onCompleted: (String value) {
              setState(() {
                _code = value;
                if (_pin == _code) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const botNavBar()),
                  );
                }
              });
            },
            onEditing: (bool value) {
              setState(() {
                _onEditing = value;
              });
              if (!_onEditing) FocusScope.of(context).unfocus();
            },
          ),
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Center(
          //     child: _onEditing
          //         ? const Text('Please enter full code')
          //         : Text('Your code: $_code'),
          //   ),
          // )
        ],
      ),
    );
  }
}
