import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  final String email;

  SignInPage({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, $email!'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                print('Signing in as $email');

                Navigator.pop(context);
              },
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white54),
                borderRadius: BorderRadius.circular(1007)
              )
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(1007)
              )),
              obscureText: true,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {

                String email = emailController.text.trim();
                String password = passwordController.text.trim();

                // Validate email and password, perform login if valid
                if (email.isNotEmpty && password.isNotEmpty) {
                  // You can replace this with your actual login logic
                  print('Login with: Email - $email, Password - $password');

                  // Navigate to the sign-in page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInPage(email: email)),
                  );
                } else {
                  print('Please enter both email and password');
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
