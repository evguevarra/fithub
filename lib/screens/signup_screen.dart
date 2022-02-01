import 'package:fit_hub/screens/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.grey),
      ),
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage('assets/fithub-logo.png'),
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'FITHub',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 30,
            ),
            buildForm(),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Signup',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: const StadiumBorder(),
                minimumSize: Size(MediaQuery.of(context).size.width * 0.70, 40),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: ' Login here',
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                     recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildForm() {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                hintText: 'Email Address',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.email,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                hintText: 'First Name',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.person,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                hintText: 'Lastname',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.email,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.lock,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                hintText: 'Confirm Password',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.lock,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
