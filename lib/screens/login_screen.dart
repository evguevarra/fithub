import 'package:fit_hub/screens/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

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
              height: 40,
            ),
            buildForm(),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: const StadiumBorder(),
                minimumSize: Size(MediaQuery.of(context).size.width * 0.70, 40),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Not yet a member?',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: ' Signup here',
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                      },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'or',
              style: TextStyle(color: Colors.grey),
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
              height: 15,
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
          ],
        ),
      ),
    );
  }
}
