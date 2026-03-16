import 'package:flutter/material.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordHidden = true;

  void _login() {
    if (_usernameController.text == "manda" &&
        _passwordController.text == "138") {

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => HomePage(
            username: _usernameController.text,
          ),
        ),
      );

    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Username / Password salah"),
        ),
      );
    }
  }

  Widget _usernameField(TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        hintText: 'Username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }

  Widget _passwordField(TextEditingController controller) {
    return TextField(
      controller: controller,
      obscureText: _isPasswordHidden,
      decoration: InputDecoration(
        hintText: 'Password',
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _isPasswordHidden
                ? Icons.visibility_off
                : Icons.visibility,
          ),
          onPressed: () {
            setState(() {
              _isPasswordHidden = !_isPasswordHidden;
            });
          },
        ),
      ),
    );
  }

  Widget _loginButton() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: _login,
        style: ElevatedButton.styleFrom( 
          backgroundColor: Colors.blue, 
          foregroundColor: Colors.white,
        ), 
        child: const Text('Login'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const Text(
                "Hello,",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Text(
                "Welcome to the app!",
                style: TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 30),

              _usernameField(_usernameController),

              const SizedBox(height: 15),

              _passwordField(_passwordController),

              const SizedBox(height: 25),

              _loginButton(),

            ],
          ),
        ),
      ),
    );
  }
}