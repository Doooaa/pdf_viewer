import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(31, 128, 232, 240),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Image.asset('assets/images/login.webp'),
              Column(
                children: [
                  Image.asset(
                    'assets/images/login.png',
                    height: 200,
                    width: 200,
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Email',
                    style:  TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Password',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => pass = value,
                  ),
                  SizedBox(height: 32.0),
                  ElevatedButton(
                    onPressed: () {
                            Navigator.pushNamed(context, '/');
                    },
                    child: Text('login'),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'Reg');
                      },
                      child: const Text(
                        'Dont have account ? register',
                        style: TextStyle(fontSize: 13),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 