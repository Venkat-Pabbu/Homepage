 import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../Login/login_screen.dart';

class SignUpForm extends StatelessWidget {

  SignUpForm({
    Key? key,
  }) : super(key: key);

  TextEditingController _emailTEC = TextEditingController();
  TextEditingController _passwordTEC = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  String email='';
  String password='';

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        key: _formkey,
        children: [
          TextFormField(
            controller: _emailTEC,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
              hintText: "Enter email ID",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              controller: _passwordTEC,
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Enter password",

                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
           TextFormField(
              controller: _passwordTEC,
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Confirm password",

                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),

          const SizedBox(height: defaultPadding),
           ElevatedButton(
            onPressed: () async {
              FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password)
                  .then((value) => Navigator.pushNamed(context, 'Myhome'));
            },
            child: Text("Sign Up".toUpperCase()

            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

}
