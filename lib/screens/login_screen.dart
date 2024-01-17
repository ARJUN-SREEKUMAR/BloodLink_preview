import 'package:flutter/material.dart';
import 'package:flutter_catalog/screens/homeScreen.dart';

const TextStyle _textStyleapp = TextStyle(
fontSize: 40,
fontWeight: FontWeight.bold,
// letterSpacing: 2,
// fontStyle: FontStyle.italic,
color:Color.fromARGB(255, 71, 69, 69)
);


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    // Perform login logic here
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == "arjun" && password == "arjun"||username == "ar" && password == "jun@123") {
  
      Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
    } else {
      showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Incorrect Credentials'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Please try again',style: TextStyle(
                fontSize: 20
              ),),
             
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
    }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blood Link",style: _textStyleapp,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: "Username",
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: _login,
              child: const Text("Login",style: TextStyle(
                fontSize: 20,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
